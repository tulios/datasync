SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAvisoAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAvisoAluno](
	[IdTipoAvisoAluno] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK10] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAvisoAluno] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAlunoNaoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAlunoNaoEscola](
	[IdTipoAlunoNaoEscola] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PKTipoAlunoNaoEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAlunoNaoEscola] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoOutraExperiencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoOutraExperiencia](
	[IdTipoOutraExperiencia] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PKTipoOutraExperiencia] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoOutraExperiencia] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
	[Descricao] [varchar](50) NULL,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoEstrago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoEstrago](
	[IdTipoEstrago] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PK33] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEstrago] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoReclamacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoReclamacao](
	[IdTipoReclamacao] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoReclamacao] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoReclamacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoResposta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoResposta](
	[IdTipoResposta] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoResposta] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoResposta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoTurno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoTurno](
	[IdTipoTurno] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoTurno] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoTurno] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoParentes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoParentes](
	[IdTipoParente] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoParentes] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoParente] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoEmbarque]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoEmbarque](
	[IdTipoEmbarque] [int] NOT NULL,
	[Descricao] [varchar](80) NULL,
 CONSTRAINT [PKTipoEmbarque] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEmbarque] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoProvidenciaPai]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoProvidenciaPai](
	[IdTipoProvidenciaPai] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PKTipoProvidenciaPai] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoProvidenciaPai] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoObstaculos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoObstaculos](
	[IdTipoObstaculos] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoObstaculos] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoObstaculos] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoSugestao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoSugestao](
	[IdTipoSugestao] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PKTipoSugestao] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoSugestao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoParada]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoParada](
	[IdTipoParada] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoParada] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoParada] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoProvidenciaProfessor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoProvidenciaProfessor](
	[IdTipoProvidenciaProfessor] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoProvidenciaProfessor] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoProvidenciaProfessor] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoResponsavel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoResponsavel](
	[IdTipoResponsavel] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoResponsavel] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoResponsavel] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAcordo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAcordo](
	[IdTipoAcordo] [int] NOT NULL,
	[Descricao] [varchar](80) NULL,
 CONSTRAINT [PKTipoAcordo] PRIMARY KEY CLUSTERED 
(
	[IdTipoAcordo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoPublicoAlvo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoPublicoAlvo](
	[IdTipoPublicoAlvo] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PKTipoPublicoAlvo] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoPublicoAlvo] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoReage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoReage](
	[IdTipoReage] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoReage] PRIMARY KEY CLUSTERED 
(
	[IdTipoReage] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAssento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAssento](
	[IdTipoAssento] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [TipoAssento] PRIMARY KEY CLUSTERED 
(
	[IdTipoAssento] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoCasco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoCasco](
	[IdTipoCasco] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [TipoCasco] PRIMARY KEY CLUSTERED 
(
	[IdTipoCasco] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoSinalizacaoNoturna]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoSinalizacaoNoturna](
	[IdTipoSinalizacao] [int] NOT NULL,
	[Descricao] [varchar](30) NULL,
 CONSTRAINT [TipoSinalizacaoNoturna] PRIMARY KEY CLUSTERED 
(
	[IdTipoSinalizacao] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAjuda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAjuda](
	[IdTipoAjuda] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PKTipoAjuda] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAjuda] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoTeto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoTeto](
	[IdTipoTeto] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [TipoTeto] PRIMARY KEY CLUSTERED 
(
	[IdTipoTeto] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoCombustivel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoCombustivel](
	[IdTipoCombustivel] [int] NOT NULL,
	[Descricao] [varchar](15) NULL,
 CONSTRAINT [TipoCombustivel] PRIMARY KEY CLUSTERED 
(
	[IdTipoCombustivel] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoPropriedade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoPropriedade](
	[IdTipoPropriedade] [int] NOT NULL,
	[Descricao] [varchar](20) NULL,
 CONSTRAINT [TipoPropriedade] PRIMARY KEY CLUSTERED 
(
	[IdTipoPropriedade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoAuxilio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoAuxilio](
	[IdTipoAuxilio] [int] NOT NULL,
	[Descricao] [varchar](80) NULL,
 CONSTRAINT [PKTipoAuxilio] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAuxilio] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoEpoca]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoEpoca](
	[IdTipoEpoca] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PKTipoEpoca] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEpoca] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoFazCaminhoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoFazCaminhoEscola](
	[IdTipoFazCaminhoEscola] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoFazCaminhoEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoFazCaminhoEscola] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoFazOutraCoisa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoFazOutraCoisa](
	[IdTipoFazOutraCoisa] [int] NOT NULL,
	[Descricao] [varchar](50) NOT NULL,
 CONSTRAINT [PKTipoFazOutraCoisa] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoFazOutraCoisa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoMelhoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoMelhoria](
	[IdMelhoria] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PKTipoMelhoria] PRIMARY KEY NONCLUSTERED 
(
	[IdMelhoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoMolhaAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoMolhaAluno](
	[IdTipoMolhaAluno] [int] NOT NULL,
	[Descricao] [varchar](150) NULL,
 CONSTRAINT [PKTipoMolhaAluno] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoMolhaAluno] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoTrabalho]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoTrabalho](
	[IdTipoTrabalho] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoTrabalho] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoTrabalho] ASC
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
 CONSTRAINT [PKMunicipio] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoCriterio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoCriterio](
	[IdTipoCriterio] [int] NOT NULL,
	[Descricao] [varchar](80) NULL,
 CONSTRAINT [PKTipoCriterio] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoCriterio] ASC
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoDificuldade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoDificuldade](
	[IdTipoDificuldade] [int] NOT NULL,
	[Descricao] [varchar](50) NULL,
 CONSTRAINT [PKTipoDificuldade] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoDificuldade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTipoMotivoBarqueiroTerceirizado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTipoMotivoBarqueiroTerceirizado](
	[IdTipoMotivoBarqueiroTerceirizado] [int] NOT NULL,
	[Descricao] [varchar](100) NULL,
 CONSTRAINT [PKTipoMotivoBarqueiroTerceirizado] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoMotivoBarqueiroTerceirizado] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAvisoAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoProfessorAvisoAluno](
	[IdTipoAvisoAluno] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[AlunoAssisteAula] [char](3) NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoProfessorAvisoAluno] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAvisoAluno] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
	[FormaContrato] [int] NULL,
	[TipoPagamento] [varchar](100) NULL,
	[Pagamento] [varchar](15) NULL,
	[Valor] [varchar](15) NULL,
 CONSTRAINT [PK49] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoContrato] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorProvidencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoProfessorProvidencia](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoProvidenciaProfessor] [int] NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoProfessorProvidencia] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProvidenciaProfessor] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAlunoReclama]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoProfessorAlunoReclama](
	[IdTipoReclamacao] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[AlunoReclama] [char](3) NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoProfessorAlunoReclama] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoReclamacao] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAlunoNaoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoProfessorAlunoNaoEscola](
	[IdTipoAlunoNaoEscola] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[CriancaNaoEscola] [char](3) NULL,
	[OutrosQuais] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoProfessorAlunoNaoEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAlunoNaoEscola] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoProfessor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoProfessor](
	[IdFormulario] [varchar](9) NOT NULL,
	[TempoExperienciaAno] [int] NULL,
	[TempoExperienciaMes] [int] NULL,
	[TempoAtuacaoAno] [int] NULL,
	[TempoAtuacaoMes] [int] NULL,
	[CursoExtra] [char](3) NOT NULL,
	[QualCursoExtra] [varchar](100) NULL,
	[OutraFuncao] [varchar](200) NULL,
	[ProfessorOutraEscola] [char](3) NULL,
	[QuantasOutraEscola] [int] NULL,
	[QualOutrasEscolas] [varchar](200) NULL,
 CONSTRAINT [PKCaracterizacaoProfessor] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAlunoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoProfessorAlunoEscola](
	[IdTipoOutroTransporte] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[OutrosQuais] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoProfessorAlunoEscola] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoProfessor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoProfessor](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoEscolaridade] [int] NULL,
	[Sexo] [char](1) NULL,
	[Idade] [int] NULL,
	[Comunidade] [varchar](100) NULL,
	[Grupo] [int] NULL,
	[QuaisGrupos] [varchar](100) NULL,
 CONSTRAINT [PKIdentificacaoProfessor] PRIMARY KEY NONCLUSTERED 
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisDonoBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPaisDonoBarco](
	[IdTipoDonoBarco] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[Quem] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoPaisDonoBarco] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoDonoBarco] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisBarcoAtrasa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPaisBarcoAtrasa](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoProvidenciaPai] [int] NOT NULL,
	[QuemOutro] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoPaisBarcoAtrasa] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProvidenciaPai] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisAlunoNaoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPaisAlunoNaoEscola](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoAlunoNaoEscola] [int] NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoPaisAlunoNaoEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoAlunoNaoEscola] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisSugestao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPaisSugestao](
	[IdTipoSugestao] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoPaisSugestao] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoSugestao] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisProvidencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPaisProvidencia](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoProvidenciaPai] [int] NOT NULL,
	[QuemOutro] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoPaisProvidencia] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoProvidenciaPai] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisOutroTransporte]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPaisOutroTransporte](
	[IdTipoOutroTransporte] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuemOutro] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoPaisOutroTransporte] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisEscolheBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPaisEscolheBarco](
	[IdTipoEscolheBarco] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuemOutro] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoPaisEscolheBarco] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEscolheBarco] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisEpocaPior]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPaisEpocaPior](
	[IdTipoEpoca] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QualOutro] [varchar](100) NULL,
	[PorqueOutro] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoPaisEpocaPior] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEpoca] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorAlunoNaoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoDiretorAlunoNaoEscola](
	[IdTipoAlunoNaoEscola] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[CriancaNaoEscola] [char](3) NULL,
	[OutrosQuais] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoDiretorAlunoNaoEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAlunoNaoEscola] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisTransportaOutro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPaisTransportaOutro](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoOutroAcompanhante] [int] NOT NULL,
	[QuemOutro] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoPaisTransportaOutro] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoOutroAcompanhante] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoDiretorOutraExperiencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoDiretorOutraExperiencia](
	[IdTipoOutraExperiencia] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuaisOutras] [varchar](100) NULL,
 CONSTRAINT [PKCaracterizacaoDiretorOutraExperiencia] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoOutraExperiencia] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoDiretor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoDiretor](
	[IdFormulario] [varchar](9) NOT NULL,
	[TempoExperienciaAno] [int] NULL,
	[TempoExperienciaMes] [int] NULL,
	[TempoAtuacaoAno] [int] NULL,
	[TempoAtuacaoMes] [int] NULL,
	[QuantidadeEscola] [int] NULL,
 CONSTRAINT [PKCaracterizacaoDiretor] PRIMARY KEY NONCLUSTERED 
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
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoEscolaridade] [int] NULL,
	[Comunidade] [varchar](100) NULL,
	[Sexo] [char](1) NULL,
	[Idade] [int] NULL,
	[Grupo] [varchar](50) NULL,
	[QuaisGrupos] [varchar](100) NULL,
 CONSTRAINT [PKIdentificacaoDiretor] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoEscola](
	[IdFormulario] [varchar](9) NOT NULL,
	[QuantidadeComunidade] [int] NULL,
	[QuaisComunidades] [varchar](100) NULL,
	[QuantidadeAluno] [int] NULL,
	[QuantidadeAlunoBarco] [int] NULL,
	[QuantidadeRota] [int] NULL,
 CONSTRAINT [PKIdentificacaoEscola] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorAlunoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoDiretorAlunoEscola](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoOutroTransporte] [int] NOT NULL,
	[OutrosQuais] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoDiretorAlunoEscola] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorAlunoReclama]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoDiretorAlunoReclama](
	[IdTipoReclamacao] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[AlunoReclama] [char](3) NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoDiretorAlunoReclama] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoReclamacao] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorRendimentoAcademico]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoDiretorRendimentoAcademico](
	[IdFormulario] [varchar](9) NOT NULL,
	[DiferencaRendimento] [char](3) NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoDiretorRendimentoAcademico] PRIMARY KEY NONCLUSTERED 
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioOutroTransporte]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoSecretarioOutroTransporte](
	[IdTipoOutroTransporte] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[OutrosQuais] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoSecretarioOutroTransporte] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDadosParada]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDadosParada](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoParada] [int] NOT NULL,
	[CodigoParada] [varchar](15) NOT NULL,
	[CodigoAtracagem] [varchar](15) NOT NULL,
	[CodigoSaida] [varchar](15) NOT NULL,
	[QuantidadeEmbarque] [int] NULL,
	[QuantidadeDesembarque] [int] NULL,
 CONSTRAINT [PKDadosParada] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoParada] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDadosParadaQuantidade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDadosParadaQuantidade](
	[IdFormulario] [varchar](9) NOT NULL,
	[QuantidadeTotalEmbarque] [int] NULL,
	[QuantidadeTotalDesembarque] [int] NULL,
	[QuantidadeDeficiente] [int] NULL,
	[QuantidadeCarona] [int] NULL,
 CONSTRAINT [PKDadosParadaQuantidade] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDadosOperacionaisInicial]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDadosOperacionaisInicial](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdaVolta] [int] NULL,
	[PontoGPSInicial] [varchar](10) NULL,
	[GPSOdometroInicial] [decimal](10, 2) NULL,
	[HoraInicial] [varchar](5) NULL,
	[LocalInicio] [varchar](100) NULL,
	[QuantidadeEmbarque] [int] NULL,
 CONSTRAINT [PKDadosOperacionaisInicial] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEventosExternos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEventosExternos](
	[IdFormulario] [varchar](9) NOT NULL,
	[QuandoObstaculos] [int] NULL,
	[FotoObstaculo1] [varchar](10) NULL,
	[FotoObstaculo2] [varchar](10) NULL,
	[FotoObstaculo3] [varchar](10) NULL,
	[ColisãoBateu] [int] NULL,
	[GPSInicial] [varchar](15) NULL,
	[GPSFinal] [varchar](15) NULL,
	[OndasGeradas] [int] NULL,
	[FotoOnda1] [varchar](10) NULL,
	[FotoOnda2] [varchar](10) NULL,
	[Filmagem] [varchar](10) NULL,
	[Meandros] [int] NULL,
	[FotoMeandros] [varchar](10) NULL,
	[LarguraInsuficiente] [int] NULL,
	[FotoLarguraInsuficiente] [varchar](10) NULL,
	[ComportamentoOnda] [int] NULL,
	[Aceleracao] [int] NULL,
 CONSTRAINT [PKEventosExternos] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblComportamentoEstabilidade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblComportamentoEstabilidade](
	[IdFormulario] [varchar](9) NOT NULL,
	[FazAgua] [int] NULL,
	[VisibilidadeReduzida] [int] NULL,
	[AdernaLados] [int] NULL,
	[BarqueiroNavegou] [int] NULL,
 CONSTRAINT [PKComportamentoEstabilidade] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDadosOperacionaisFinal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDadosOperacionaisFinal](
	[IdFormulario] [varchar](9) NOT NULL,
	[CodigoParadaTermino] [varchar](15) NULL,
	[GPSOdometroFinal] [decimal](10, 2) NULL,
	[HoraFinal] [varchar](5) NULL,
	[LocalFinal] [varchar](100) NULL,
	[CodigoPontoEscola] [varchar](20) NULL,
	[CodigoBarcoAtracagem] [varchar](15) NULL,
	[CodigoBarcoParadaFinal] [varchar](15) NULL,
	[DesembarqueFinal] [int] NULL,
 CONSTRAINT [PKDadosOperacionaisFinal] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDadosEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDadosEscola](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoParada] [int] NOT NULL,
	[CodigoParadaEscola] [varchar](15) NULL,
	[CodigoINEP] [int] NULL,
 CONSTRAINT [PKDadosEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoParada] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDadosEntrevista]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDadosEntrevista](
	[IdTipoParada] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[CodigoInicialEntrevista] [varchar](15) NULL,
	[CodigoFinalEntrevista] [varchar](15) NULL,
	[CodigoParadaEntrevista] [varchar](15) NULL,
 CONSTRAINT [PKDadosEntrevista] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoParada] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblImagens]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblImagens](
	[IdFormulario] [varchar](9) NOT NULL,
	[AlunoEmbarcandoFoto1] [varchar](10) NULL,
	[AlunoEmbarcandoFoto2] [varchar](10) NULL,
	[AlunoEmbarcandoFoto3] [varchar](10) NULL,
	[AlunoEmbarcandoFilmagem] [varchar](10) NULL,
	[AlunoSentadoFoto1] [varchar](10) NULL,
	[AlunoSentadoFoto2] [varchar](10) NULL,
	[AlunoSentadoFoto3] [varchar](10) NULL,
	[AlunoSentadoFilmagem] [varchar](10) NULL,
	[AlunoDesembarcandoFoto1] [varchar](10) NULL,
	[AlunoDesembarcandoFoto2] [varchar](10) NULL,
	[AlunoDesembarcandoFoto3] [varchar](10) NULL,
	[AlunoDesembarcandoFilmagem] [varchar](10) NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PKImagens] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEventosInternos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEventosInternos](
	[IdFormulario] [varchar](9) NOT NULL,
	[QuantidadeMochilaCostas] [varchar](50) NULL,
	[QuantidadeColo] [varchar](50) NULL,
	[QuantidadeChao] [varchar](50) NULL,
	[QualLocal] [varchar](100) NULL,
	[Escorregao] [char](3) NULL,
	[EmbarqueDeficiente] [char](3) NULL,
	[QualDeficiencia] [varchar](100) NULL,
	[ObservacaoEmbarque] [text] NULL,
	[Foto1] [varchar](10) NULL,
	[Foto2] [varchar](10) NULL,
	[Foto3] [varchar](10) NULL,
	[PossuiMaterial] [char](3) NULL,
 CONSTRAINT [PKEventosInternos] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorFrequencia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoCondutorFrequencia](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoFrequencia] [int] NOT NULL,
	[QuandoOutro] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblInformacaoCondutorFrequencia] PRIMARY KEY CLUSTERED 
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoEscolaResponsavelBarco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoEscolaResponsavelBarco](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoResposta] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoEscolaResponsavelBarco] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoResposta] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEscolaPlanejamentoRota]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoEscolaPlanejamentoRota](
	[IdTipoResposta] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKIdentificacaoEscolaPlanejamentoRota] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoResposta] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEscolaAtendeTurno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoEscolaAtendeTurno](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoTurno] [int] NOT NULL,
 CONSTRAINT [PKIdentificacaoEscolaAtendeTurno] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoTurno] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRota]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoAlunoRota](
	[IdFormulario] [varchar](9) NOT NULL,
	[CaminhoSeca] [char](5) NULL,
	[CaminhoCheia] [char](5) NULL,
	[Seca] [text] NULL,
	[Cheia] [text] NULL,
	[Epoca] [char](3) NULL,
 CONSTRAINT [PK_tblPercepcaoAlunoRota] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaAjudaBarqueiro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoAlunoRotaAjudaBarqueiro](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoAjuda] [int] NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoAlunoRotaAjudaBarqueiro] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoAjuda] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaEpocaPior]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoAlunoRotaEpocaPior](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoEpoca] [int] NOT NULL,
	[QualOutro] [varchar](100) NULL,
	[PorqueOutro] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoAlunoRotaEpocaPior] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoEpoca] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaFazCaminhoEscola]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoAlunoRotaFazCaminhoEscola](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoFazCaminhoEscola] [int] NOT NULL,
	[OutroQual] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoAlunoRotaFazCaminhoEscola] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoFazCaminhoEscola] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaFazOutraCoisa]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoAlunoRotaFazOutraCoisa](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoFazOutraCoisa] [int] NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoAlunoRotaFazOutraCoisa] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoFazOutraCoisa] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPosTesteAvaliacaoLancha]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPosTesteAvaliacaoLancha](
	[IdFormulario] [varchar](9) NOT NULL,
	[Seguranca] [int] NULL,
	[Tamanho] [int] NULL,
	[Aparencia] [int] NULL,
	[ProtecaoSolChuva] [int] NULL,
	[TempoViagem] [int] NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PKPosTesteAvaliacaoLancha] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPosTesteAuno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPosTesteAuno](
	[IdFormulario] [varchar](9) NOT NULL,
	[MelhorBarco] [int] NULL,
	[GostouBarco] [varchar](250) NULL,
	[NaoGostouBarco] [varchar](250) NULL,
	[GostouViagem] [varchar](250) NULL,
	[NaoGostouViagem] [varchar](250) NULL,
	[ColeteSalvaVida] [int] NULL,
	[PorqueGostouColete] [varchar](250) NULL,
	[UsarColeteSalvaVida] [char](3) NULL,
	[PorqueUsar] [varchar](250) NULL,
	[FaltaBarco] [varchar](250) NULL,
 CONSTRAINT [PKPosTesteAuno] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPosTesteMolhaAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPosTesteMolhaAluno](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoMolhaAluno] [int] NOT NULL,
	[MolhouAluno] [char](3) NULL,
 CONSTRAINT [PKPosTesteMolhaAluno] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoMolhaAluno] ASC
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
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoEscolaridade] [int] NULL,
	[Sexo] [char](1) NULL,
	[Idade] [int] NULL,
	[Comunidade] [varchar](100) NULL,
	[Turno] [int] NULL,
	[Grupo] [varchar](50) NULL,
	[QuaisGrupos] [varchar](100) NULL,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoMelhoria]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoAlunoMelhoria](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdMelhoria] [int] NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoAlunoMelhoria] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdMelhoria] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoFamiliaAluno](
	[IdFormulario] [varchar](9) NOT NULL,
	[TemFilhos] [char](3) NULL,
	[QuantidadeFilhos] [int] NULL,
	[QuantidadeFilhosIdadeEscolar] [int] NULL,
	[QuantidadeFamilia] [int] NULL,
 CONSTRAINT [PKCaracterizacaoFamiliaAluno] PRIMARY KEY NONCLUSTERED 
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblObstaculos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblObstaculos](
	[IdTipoObstaculos] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuaisOutros] [varchar](50) NULL,
 CONSTRAINT [PKObstaculos] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoObstaculos] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaParentes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoFamiliaParentes](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoParente] [int] NOT NULL,
	[QuaisParentes] [varchar](100) NULL,
 CONSTRAINT [PKCaracterizacaoFamiliaParentes] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoParente] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaPaisAuxilio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoFamiliaPaisAuxilio](
	[IdTipoAuxilio] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QualOutro] [varchar](100) NULL,
 CONSTRAINT [PKtblCaracterizacaoFamiliaPaisAuxilio] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAuxilio] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaPaisTrabalho]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoFamiliaPaisTrabalho](
	[IdTipoTrabalho] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[DescricaoAjuda] [varchar](100) NULL,
 CONSTRAINT [PKCaracterizacaoFamiliaPaisTrabalho] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoTrabalho] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAlunoParentes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoFamiliaAlunoParentes](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoParente] [int] NOT NULL,
	[QuaisParentes] [varchar](100) NULL,
 CONSTRAINT [PKCaracterizacaoFamiliaAlunoParentes] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoParente] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmbarqueAluno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEmbarqueAluno](
	[IdTipoEmbarque] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKEmbarqueAluno] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoEmbarque] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPais]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPais](
	[IdFormulario] [varchar](9) NOT NULL,
	[TempoEscola] [varchar](5) NULL,
	[QualOutro] [varchar](100) NULL,
	[ProblemasOutrasPessoas] [char](3) NULL,
	[ProblemasOutrasPessoasPorque] [varchar](150) NULL,
	[ProblemaBarqueiroVizinhanca] [char](3) NULL,
	[ProblemaBarqueiroVizinhancaPorque] [varchar](150) NULL,
	[BarcoNaoBuscaFilho] [char](3) NULL,
	[BarcoNaoBuscaFilhoFrequencia] [varchar](100) NULL,
	[PorqueBarcoNaoBuscaFilho] [varchar](150) NULL,
 CONSTRAINT [PKInformacaoPais] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaPais]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoFamiliaPais](
	[IdFormulario] [varchar](9) NOT NULL,
	[OcupacaoPai] [varchar](100) NULL,
	[OcupacaoMae] [varchar](100) NULL,
	[QuantidadeFilhos] [int] NULL,
	[QuantidadeFilhosIdadeEscolar] [int] NULL,
	[QuantidadeFamilia] [int] NULL,
	[QuantidadeAjudamSustento] [int] NULL,
 CONSTRAINT [PKCaracterizacaoFamiliaPais] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoPais]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoPais](
	[IdFormulario] [varchar](9) NOT NULL,
	[TipoEntrevistado] [char](17) NOT NULL,
	[Comunidade] [varchar](100) NULL,
	[Idade] [int] NULL,
	[IdTipoEscolaridade] [int] NULL,
	[Grupo] [int] NULL,
	[QuaisGrupos] [varchar](100) NULL,
 CONSTRAINT [PKIdentificacaoPais] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoCondutor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoCondutor](
	[IdFormulario] [varchar](9) NOT NULL,
	[TempoExperienciaCondutorAnos] [int] NULL,
	[TempoExperienciaCondutorMeses] [int] NULL,
	[TempoAtuacaoAnos] [int] NULL,
	[TempoAtuacaoMeses] [int] NULL,
	[PossuiHabilitacao] [char](3) NOT NULL,
	[TipoCategoria] [varchar](100) NULL,
	[AnoRegistro] [int] NULL,
	[ParticipacaoCurso] [char](3) NOT NULL,
	[PilotaBarcoMotorPopa] [char](3) NOT NULL,
	[QuantoHP] [decimal](10, 2) NULL,
 CONSTRAINT [PK3] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoCondutor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoCondutor](
	[IdFormulario] [varchar](9) NOT NULL,
	[Comunidade] [varchar](100) NULL,
	[Sexo] [char](1) NOT NULL,
	[Idade] [int] NULL,
	[IdTipoEscolaridade] [int] NULL,
	[Grupo] [varchar](50) NULL,
	[QuaisGrupos] [varchar](100) NULL,
 CONSTRAINT [PK2] PRIMARY KEY NONCLUSTERED 
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
	[TrechoMaiorDificuldade] [char](3) NULL,
	[PorqueTrechoMaiorDificuldade] [varchar](100) NULL,
	[ContratadoBarco] [char](3) NULL,
	[PorqueContratadoBarco] [varchar](100) NULL,
	[ManutencaoNecessaria] [char](3) NULL,
	[PorqueManutencaoNecessaria] [varchar](100) NULL,
	[LanchaSegura] [char](3) NULL,
	[PorqueLanchaSegura] [varchar](100) NULL,
	[QualSolucao] [varchar](100) NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PKLanchaNovaCondutor] PRIMARY KEY NONCLUSTERED 
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
	[CompraOleo] [char](3) NULL,
	[Onde] [varchar](100) NULL,
	[Frequencia] [varchar](100) NULL,
 CONSTRAINT [PK4] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoPrefeito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoPrefeito](
	[IdFormulario] [varchar](9) NOT NULL,
	[TempoMandatoAno] [int] NULL,
	[TempoMandatoMeses] [int] NULL,
	[QuantidadeMandato] [int] NULL,
	[QuaisMandatos] [varchar](100) NULL,
 CONSTRAINT [PKCaracterizacaoPrefeito] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoPrefeito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoPrefeito](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoEscolaridade] [int] NULL,
	[Telefone1] [varchar](10) NULL,
	[Telefone2] [varchar](10) NULL,
	[email1] [varchar](20) NULL,
	[email2] [varchar](20) NULL,
	[Sexo] [char](1) NULL,
	[Idade] [int] NULL,
 CONSTRAINT [PKIdentificacaoPrefeito] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPrefeito](
	[IdFormulario] [varchar](9) NOT NULL,
	[QuantidadeSecretarioEducacao] [int] NULL,
	[QuantidadeAcoes] [int] NULL,
	[QuantidadeBarco] [int] NULL,
 CONSTRAINT [PKInformacaoPrefeito] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoAcordo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPrefeitoAcordo](
	[IdTipoAcordo] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
	[RealizaTransporteEscolar] [char](3) NULL,
	[IdFormulario] [varchar](9) NOT NULL,
 CONSTRAINT [PKInformacaoPrefeitoAcordo] PRIMARY KEY CLUSTERED 
(
	[IdTipoAcordo] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoResponsavelTransporEscolar]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPrefeitoResponsavelTransporEscolar](
	[IdTipoResponsavel] [int] NOT NULL,
	[QuaisOutros] [varchar](50) NULL,
	[IdFormulario] [varchar](9) NOT NULL,
 CONSTRAINT [PKInformacaoPrefeitoResponsavelTransporEscolar] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoResponsavel] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoPublicoAlvo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPrefeitoPublicoAlvo](
	[IdTipoPublicoAlvo] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
	[IdFormulario] [varchar](9) NOT NULL,
 CONSTRAINT [PKInformacaoPrefeitoPublicoAlvo] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoPublicoAlvo] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoReage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoPrefeitoReage](
	[IdTipoReage] [int] NOT NULL,
	[FormalizacaoPrestacaoServico] [char](3) NULL,
	[QuaisOutros] [varchar](100) NULL,
	[IdFormulario] [varchar](9) NOT NULL,
 CONSTRAINT [PKInformacaoPrefeitoReage] PRIMARY KEY CLUSTERED 
(
	[IdTipoReage] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDimensaoEmbarcacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblDimensaoEmbarcacao](
	[IdFormulario] [varchar](10) NOT NULL,
	[ComprimentoTotal] [varchar](20) NULL,
	[Boca] [varchar](20) NULL,
	[Pontal] [varchar](20) NULL,
	[BordaLivreBB] [varchar](20) NULL,
	[BordaLivreBE] [varchar](20) NULL,
	[ComprimentoAssento] [varchar](20) NULL,
 CONSTRAINT [DimensaoEmbarcacao] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEmbarcacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoEmbarcacao](
	[IdFormulario] [varchar](10) NOT NULL,
	[PossuiIdentificacao] [char](3) NULL,
	[NomeEmbarcacao] [varchar](100) NOT NULL,
	[AnoEmbarcacao] [int] NULL,
	[TipoEmbarcacao] [int] NULL,
	[QuaisOutrosTipos] [varchar](100) NULL,
	[NomePopular] [varchar](100) NULL,
	[PossuiInscricao] [char](3) NULL,
	[PossuiRegistro] [char](3) NULL,
	[NumeroRegistro] [varchar](50) NULL,
	[LocalRegistro] [varchar](100) NULL,
	[AtividadeEmbarcacao] [varchar](100) NULL,
	[CapacidadePassageiros] [int] NULL,
	[CaladoLeve] [varchar](20) NULL,
	[CaladoCarregado] [varchar](20) NULL,
	[ArqueacaoLiquida] [varchar](20) NULL,
	[ArqueacaoBruta] [varchar](20) NULL,
	[PorteBruto] [varchar](20) NULL,
 CONSTRAINT [IdentificacaoEmbarcacao] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblConservacaoEmbarcacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblConservacaoEmbarcacao](
	[IdFormulario] [varchar](10) NOT NULL,
	[EstadoCasco] [int] NULL,
	[EstadoPiso] [int] NULL,
	[EstadoTeto] [int] NULL,
	[EstadoAssento] [int] NULL,
	[EstadoColete] [int] NULL,
	[EstadoBoias] [int] NULL,
	[EstadoBalsa] [int] NULL,
 CONSTRAINT [ConservacaoEmbarcacao] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoEmbarcacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoEmbarcacao](
	[IdFormulario] [varchar](10) NOT NULL,
	[TipoPropulsao] [int] NULL,
	[QuaisOutrasPropulsao] [varchar](100) NULL,
	[QuantidadeMotores] [int] NULL,
	[SabePotenciaMotor1] [varchar](15) NULL,
	[SabePotenciaMotor2] [varchar](15) NULL,
	[SabePotenciaMotor3] [varchar](15) NULL,
	[PotenciaMotor1] [varchar](20) NULL,
	[MarcaMotor1] [varchar](50) NULL,
	[ModeloMotor1] [varchar](50) NULL,
	[PotenciaMotor2] [varchar](20) NULL,
	[MarcaMotor2] [varchar](50) NULL,
	[ModeloMotor2] [varchar](50) NULL,
	[PotenciaMotor3] [varchar](20) NULL,
	[MarcaMotor3] [varchar](50) NULL,
	[ModeloMotor3] [varchar](50) NULL,
	[PossuiReverso] [char](3) NULL,
	[MarcaReverso] [varchar](50) NULL,
	[RelacaoReverso] [varchar](50) NULL,
	[ComandoMotor] [int] NULL,
	[QuaisOutrosComandos] [varchar](100) NULL,
	[SabeLitros1] [varchar](20) NULL,
	[QuantidadeLitros1] [varchar](50) NULL,
	[SabeLitros2] [varchar](20) NULL,
	[QuantidadeLitros2] [varchar](50) NULL,
	[SabeLitros3] [varchar](20) NULL,
	[QuantidadeLitros3] [varchar](50) NULL,
	[PosicaoComando] [int] NULL,
 CONSTRAINT [CaracterizacaoEmbarcacao] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTripulacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblTripulacao](
	[IdFormulario] [varchar](10) NOT NULL,
	[PossuiBoias] [char](3) NULL,
	[QuantasBoias] [int] NULL,
	[PossuiColetes] [char](3) NULL,
	[QuantosColetes] [int] NULL,
	[PossuiJanelas] [char](3) NULL,
	[QuantasJanelas] [int] NULL,
	[PossuiSafenas] [char](3) NULL,
	[ProtecaoMotor] [char](3) NULL,
	[PossuiGuardaCorpo] [varchar](15) NULL,
	[PossuiBaterias] [char](3) NULL,
	[PossuiCarregadorBateria] [char](3) NULL,
	[PossuiPartidaEletrica] [char](3) NULL,
 CONSTRAINT [Tripulacao] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblImagensEmbarcacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblImagensEmbarcacao](
	[IdFormulario] [varchar](10) NOT NULL,
	[VistaFrontal] [varchar](20) NULL,
	[VistaLateralEsq] [varchar](20) NULL,
	[VistaLateralDir] [varchar](20) NULL,
	[VistaTraseira] [varchar](20) NULL,
	[CabineGeral] [varchar](20) NULL,
	[CabineLeme] [varchar](20) NULL,
	[CabineAssento] [varchar](20) NULL,
	[CabineFiacao] [varchar](20) NULL,
	[MotorFoto1] [varchar](20) NULL,
	[MotorFoto2] [varchar](20) NULL,
	[MotorFoto3] [varchar](20) NULL,
	[MotorFoto4] [varchar](20) NULL,
	[EntradaFoto1] [varchar](20) NULL,
	[EntradaFoto2] [varchar](20) NULL,
	[CoberturaFoto1] [varchar](20) NULL,
	[CoberturaFoto2] [varchar](20) NULL,
	[PisoFoto1] [varchar](20) NULL,
	[PisoFoto2] [varchar](20) NULL,
	[AssentoFoto1] [varchar](20) NULL,
	[AssentoFoto2] [varchar](20) NULL,
	[FiacaoFoto1] [varchar](20) NULL,
	[FiacaoFoto2] [varchar](20) NULL,
	[ItensFoto1] [varchar](20) NULL,
	[ItensFoto2] [varchar](20) NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [ImagensEmbarcacao] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCombustivelEmbarcacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCombustivelEmbarcacao](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoCombustivel] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [CombustivelEmbarcacao] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoCombustivel] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPropriedadeEmbarcacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPropriedadeEmbarcacao](
	[IdFormulario] [varchar](10) NOT NULL,
	[IdTipoPropriedade] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PropriedadeEmbarcacao] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoPropriedade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAlunoAuxilio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoFamiliaAlunoAuxilio](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoAuxilio] [int] NOT NULL,
	[QualOutro] [varchar](100) NULL,
	[AlunoTrabalha] [char](3) NULL,
 CONSTRAINT [PKCaracterizacaoFamiliaAlunoAuxilio] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoAuxilio] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAlunoTrabalho]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoFamiliaAlunoTrabalho](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoTrabalho] [int] NOT NULL,
	[DescricaoAjuda] [varchar](100) NULL,
 CONSTRAINT [PKCaracterizacaoFamiliaAlunoTrabalho] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoTrabalho] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioAcordo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoSecretarioAcordo](
	[IdTipoAcordo] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[RealizaTransporteEscolar] [char](3) NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoSecretarioAcordo] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoAcordo] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioReage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoSecretarioReage](
	[IdTipoReage] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[FormalizacaoPrestacaoServico] [char](3) NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoSecretarioReage] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoReage] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMaterialAssento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblMaterialAssento](
	[IdTipoAssento] [int] NOT NULL,
	[IdFormulario] [varchar](10) NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [MaterialAssento] PRIMARY KEY CLUSTERED 
(
	[IdTipoAssento] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMaterialCasco]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblMaterialCasco](
	[IdTipoCasco] [int] NOT NULL,
	[IdFormulario] [varchar](10) NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [MaterialCasco] PRIMARY KEY CLUSTERED 
(
	[IdTipoCasco] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSinalizacaoNoturna]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblSinalizacaoNoturna](
	[IdTipoSinalizacao] [int] NOT NULL,
	[IdFormulario] [varchar](10) NOT NULL,
	[QuaisOutras] [char](10) NULL,
 CONSTRAINT [SinalizacaoNoturna] PRIMARY KEY CLUSTERED 
(
	[IdTipoSinalizacao] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMaterialTeto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblMaterialTeto](
	[IdTipoTeto] [int] NOT NULL,
	[IdFormulario] [varchar](10) NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [MaterialTeto] PRIMARY KEY CLUSTERED 
(
	[IdTipoTeto] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoSecretario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblIdentificacaoSecretario](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoEscolaridade] [int] NULL,
	[Telefone1] [varchar](10) NULL,
	[Telefone2] [varchar](10) NULL,
	[email1] [varchar](20) NULL,
	[email2] [varchar](20) NULL,
	[Sexo] [char](1) NULL,
	[Idade] [int] NULL,
 CONSTRAINT [PKIdentificacaoSecretario] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoSecretario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCaracterizacaoSecretario](
	[IdFormulario] [varchar](9) NOT NULL,
	[TempoMandatoAno] [int] NULL,
	[TempoMandatoMeses] [int] NULL,
	[QuantidadeMandato] [int] NULL,
 CONSTRAINT [PKCaracterizacaoSecretario] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioCriterio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformacaoSecretarioCriterio](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoCriterio] [int] NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKInformacaoSecretarioCriterio] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoCriterio] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoSecretarioMotivoBarqueiroTerceirizado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoSecretarioMotivoBarqueiroTerceirizado](
	[IdTipoMotivoBarqueiroTerceirizado] [int] NOT NULL,
	[IdFormulario] [varchar](9) NOT NULL,
	[QuaisOutros] [varchar](100) NULL,
 CONSTRAINT [PKPercepcaoSecretarioMotivoBarqueiroTerceirizado] PRIMARY KEY NONCLUSTERED 
(
	[IdTipoMotivoBarqueiroTerceirizado] ASC,
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPercepcaoSecretarioDificuldade]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPercepcaoSecretarioDificuldade](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdTipoDificuldade] [int] NOT NULL,
	[QuaisOutros] [varchar](80) NULL,
 CONSTRAINT [PKPercepcaoSecretarioDificuldade] PRIMARY KEY NONCLUSTERED 
(
	[IdFormulario] ASC,
	[IdTipoDificuldade] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
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
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoMunicipio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoMunicipio](
	[IdFormulario] [varchar](10) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[Data] [smalldatetime] NOT NULL,
	[IdMunicipio] [int] NULL,
	[HoraInicial] [varchar](5) NULL,
	[HoraFinal] [varchar](5) NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [CabecalhoMunicipio] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoPrefeito]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoPrefeito](
	[IdFormulario] [varchar](9) NOT NULL,
	[Pesquisador] [varchar](100) NOT NULL,
	[IdMunicipio] [int] NULL,
	[DataColeta] [smalldatetime] NOT NULL,
	[TempoInicio] [varchar](5) NOT NULL,
	[TempoTermino] [varchar](5) NOT NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PKCabecalhoPrefeito] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoEmbarcacao]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoEmbarcacao](
	[IdFormulario] [varchar](10) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[Data] [smalldatetime] NOT NULL,
	[IdMunicipio] [int] NULL,
	[IdRota] [int] NULL,
	[Rota] [varchar](100) NULL,
	[HoraInicial] [varchar](5) NULL,
	[HoraFinal] [varchar](5) NULL,
 CONSTRAINT [CabecalhoEmbarcacao] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoSecretario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoSecretario](
	[IdFormulario] [varchar](9) NOT NULL,
	[Pesquisador] [varchar](100) NOT NULL,
	[IdMunicipio] [int] NULL,
	[DataColeta] [smalldatetime] NOT NULL,
	[TempoInicio] [varchar](5) NOT NULL,
	[TempoTermino] [varchar](5) NOT NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PKCabecalhoSecretario] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoPais]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoPais](
	[IdFormulario] [varchar](9) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[IdFormularioAluno] [varchar](50) NULL,
	[Data] [smalldatetime] NOT NULL,
	[IdMunicipio] [int] NULL,
	[Rota] [varchar](100) NULL,
	[IdRota] [int] NULL,
	[TempoInicio] [varchar](5) NULL,
	[TempoTermino] [varchar](5) NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PKCabecalhoPais] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoCondutor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoCondutor](
	[IdFormulario] [varchar](9) NOT NULL,
	[IdPesquisador] [varchar](50) NOT NULL,
	[IdMunicipio] [int] NULL,
	[Rota] [varchar](100) NOT NULL,
	[IdRota] [int] NOT NULL,
	[Data] [smalldatetime] NULL,
	[HorarioInicio] [varchar](5) NOT NULL,
	[HorarioTermino] [varchar](5) NOT NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PK1] PRIMARY KEY NONCLUSTERED 
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
	[IdFormulario] [varchar](9) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[DataColeta] [smalldatetime] NOT NULL,
	[IdINEP] [int] NULL,
	[NomeEscola] [varchar](100) NULL,
	[IdMunicipio] [int] NULL,
	[Rota] [varchar](100) NULL,
	[IdRota] [int] NULL,
	[TempoInicio] [varchar](5) NULL,
	[TempoTermino] [varchar](5) NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PKCabecalhoAluno] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoProfessor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoProfessor](
	[IdFormulario] [varchar](9) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[DataColeta] [smalldatetime] NOT NULL,
	[IdMunicipio] [int] NULL,
	[IdINEP] [int] NULL,
	[NomeEscola] [varchar](100) NULL,
	[FotoEscola] [varchar](10) NULL,
	[Rota] [varchar](100) NULL,
	[IdRota] [int] NULL,
	[TempoInicio] [varchar](5) NULL,
	[TempoTermino] [varchar](5) NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PKCabecalhoProfessor] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoDesempenho]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoDesempenho](
	[IdFormulario] [varchar](9) NOT NULL,
	[Pesquisador] [varchar](50) NULL,
	[Data] [smalldatetime] NOT NULL,
	[IdMunicipio] [int] NULL,
	[IdRota] [int] NULL,
	[Rota] [varchar](100) NULL,
	[TipoAvaliado] [int] NULL,
	[PotenciaMotor] [decimal](10, 2) NULL,
	[CaracteristicaRota] [int] NULL,
	[TipoNaoAvaliado] [int] NULL,
	[Referencia] [int] NULL,
 CONSTRAINT [PKCabecalhoDesempenho] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCabecalhoDiretor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCabecalhoDiretor](
	[IdFormulario] [varchar](9) NOT NULL,
	[Pesquisador] [varchar](100) NOT NULL,
	[IdMunicipio] [int] NULL,
	[IdINEP] [int] NULL,
	[NomeEscola] [varchar](100) NULL,
	[DataColeta] [smalldatetime] NOT NULL,
	[Foto] [varchar](20) NULL,
	[TempoInicio] [varchar](5) NOT NULL,
	[TempoTermino] [varchar](5) NOT NULL,
	[Observacao] [text] NULL,
 CONSTRAINT [PKCabecalhoDiretor] PRIMARY KEY NONCLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblOutrosItensMunicipio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblOutrosItensMunicipio](
	[IdFormulario] [varchar](10) NOT NULL,
	[Foto1] [varchar](20) NULL,
	[Descricao1] [varchar](100) NULL,
	[Foto2] [varchar](20) NULL,
	[Descricao2] [varchar](100) NULL,
	[Foto3] [varchar](20) NULL,
	[Descricao3] [varchar](100) NULL,
	[Foto4] [varchar](20) NULL,
	[Descricao4] [varchar](100) NULL,
	[Foto5] [varchar](20) NULL,
	[Descricao5] [varchar](100) NULL,
	[Foto6] [varchar](20) NULL,
	[Descricao6] [varchar](100) NULL,
	[Foto7] [varchar](20) NULL,
	[Descricao7] [varchar](100) NULL,
	[Foto8] [varchar](20) NULL,
	[Descricao8] [varchar](100) NULL,
 CONSTRAINT [OutrosItensMunicipio] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblItensMunicipio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblItensMunicipio](
	[IdFormulario] [varchar](10) NOT NULL,
	[PossuiBanco] [char](3) NULL,
	[QuantidadeBanco] [int] NULL,
	[FotoBanco1] [varchar](20) NULL,
	[FotoBanco2] [varchar](20) NULL,
	[PossuiLoterica] [char](3) NULL,
	[QuantidadeLoterica] [int] NULL,
	[FotoLoterica1] [varchar](20) NULL,
	[FotoLoterica2] [varchar](20) NULL,
	[PossuiCorreio] [char](3) NULL,
	[QuantidadeCorreios] [int] NULL,
	[FotoCorreio1] [varchar](20) NULL,
	[FotoCorreio2] [varchar](20) NULL,
	[PossuiLojaBarco] [char](3) NULL,
	[QuantidadeLojaBarco] [int] NULL,
	[FotoLojaBarco1] [varchar](20) NULL,
	[FotoLojaBarco2] [varchar](20) NULL,
	[PossuiLojaMotor] [char](3) NULL,
	[QuantidadeLojaMotor] [int] NULL,
	[FotoLojaMotor1] [varchar](20) NULL,
	[FotoLojaMotor2] [varchar](20) NULL,
	[PossuiLojaManutencao] [char](3) NULL,
	[QuantidadeLojaManutencao] [int] NULL,
	[FotoLojaManutencao1] [varchar](20) NULL,
	[FotoLojaManutencao2] [varchar](20) NULL,
	[PossuiLojaPeças] [char](3) NULL,
	[QuantidadeLojaPeças] [int] NULL,
	[FotoLojaPeças1] [varchar](20) NULL,
	[FotoLojaPeças2] [varchar](20) NULL,
	[PossuiRetifica] [char](3) NULL,
	[QuantidadeRetifica] [int] NULL,
	[FotoRetifica1] [varchar](20) NULL,
	[FotoRetifica2] [varchar](20) NULL,
	[PossuiOficina] [char](3) NULL,
	[QuantidadeOficina] [int] NULL,
	[FotoOficina1] [varchar](20) NULL,
	[FotoOficina2] [varchar](20) NULL,
	[PossuiEstaleiro] [char](3) NULL,
	[QuantidadeEstaleiro] [int] NULL,
	[FotoEstaleiro1] [varchar](20) NULL,
	[FotoEstaleiro2] [varchar](20) NULL,
	[PossuiOficinaEletronicos] [char](3) NULL,
	[QuantidadeOficinaEletronicos] [int] NULL,
	[FotoOficinaEletronicos1] [varchar](20) NULL,
	[FotoOficinaEletronicos2] [varchar](20) NULL,
	[PossuiLojaFerramentas] [char](3) NULL,
	[QuantidadeLojaFerramentas] [int] NULL,
	[ValorAluminio] [varchar](15) NULL,
	[UnidadeAluminio] [varchar](15) NULL,
	[ValorEletrodo] [varchar](15) NULL,
	[FotoLojaFerramentas1] [varchar](20) NULL,
	[FotoLojaFerramentas2] [varchar](20) NULL,
	[PossuiAssociacao] [char](3) NULL,
	[QuantidadeAssociacao] [int] NULL,
	[FotoAssociacao1] [varchar](20) NULL,
	[FotoAssociacao2] [varchar](20) NULL,
	[PossuiVHF] [char](3) NULL,
	[QuantidadeVHF] [int] NULL,
	[FotoVHF1] [varchar](20) NULL,
	[FotoVHF2] [varchar](20) NULL,
	[PossuiLanHouse] [char](3) NULL,
	[QuantidadeLanHouse] [int] NULL,
	[FotoLanHouse1] [varchar](20) NULL,
	[FotoLanHouse2] [varchar](20) NULL,
 CONSTRAINT [ItensMunicipio] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPostoAbastecimento2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPostoAbastecimento2](
	[IdFormulario] [varchar](10) NOT NULL,
	[Bandeira] [varchar](50) NULL,
	[Flutuante] [char](3) NULL,
	[Gasolina] [varchar](6) NULL,
	[Alcool] [varchar](6) NULL,
	[Diesel] [varchar](6) NULL,
	[Oleo2Tempos] [varchar](6) NULL,
	[Oleo4Tempos] [varchar](6) NULL,
	[FacilidadeGasolina] [char](3) NULL,
	[PorqueFacilidadeGasolina] [varchar](100) NULL,
	[DeOndeVemGasolina] [varchar](100) NULL,
	[FacilidadeDiesel] [char](3) NULL,
	[PorqueFacilidadeDiesel] [varchar](100) NULL,
	[DeOndeVemDiesel] [varchar](100) NULL,
	[FotoPosto1] [varchar](20) NULL,
	[FotoPosto2] [varchar](20) NULL,
 CONSTRAINT [PostoAbastecimento2] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPostoAbastecimento3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPostoAbastecimento3](
	[IdFormulario] [varchar](10) NOT NULL,
	[Bandeira] [varchar](50) NULL,
	[Flutuante] [char](3) NULL,
	[Gasolina] [varchar](6) NULL,
	[Alcool] [varchar](6) NULL,
	[Diesel] [varchar](6) NULL,
	[Oleo2Tempos] [varchar](6) NULL,
	[Oleo4Tempos] [varchar](6) NULL,
	[FacilidadeGasolina] [char](3) NULL,
	[PorqueFacilidadeGasolina] [varchar](100) NULL,
	[DeOndeVemGasolina] [varchar](100) NULL,
	[FacilidadeDiesel] [char](3) NULL,
	[PorqueFacilidadeDiesel] [varchar](100) NULL,
	[DeOndeVemDiesel] [varchar](100) NULL,
	[FotoPosto1] [varchar](20) NULL,
	[FotoPosto2] [varchar](20) NULL,
 CONSTRAINT [PostoAbastecimento3] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPostoAbastecimento1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblPostoAbastecimento1](
	[IdFormulario] [varchar](10) NOT NULL,
	[Bandeira] [varchar](50) NULL,
	[Flutuante] [char](3) NULL,
	[Gasolina] [varchar](6) NULL,
	[Alcool] [varchar](6) NULL,
	[Diesel] [varchar](6) NULL,
	[Oleo2Tempos] [varchar](6) NULL,
	[Oleo4Tempos] [varchar](6) NULL,
	[FacilidadeGasolina] [char](3) NULL,
	[PorqueFacilidadeGasolina] [varchar](100) NULL,
	[DeOndeVemGasolina] [varchar](100) NULL,
	[FacilidadeDiesel] [char](3) NULL,
	[PorqueFacilidadeDiesel] [varchar](100) NULL,
	[DeOndeVemDiesel] [varchar](100) NULL,
	[FotoPosto1] [varchar](20) NULL,
	[FotoPosto2] [varchar](20) NULL,
 CONSTRAINT [PostoAbastecimento1] PRIMARY KEY CLUSTERED 
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblServiçosEmergenciaisMunicipio]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblServiçosEmergenciaisMunicipio](
	[IdFormulario] [varchar](10) NOT NULL,
	[PossuiBombeiro] [char](3) NULL,
	[QuantidadeBombeiro] [int] NULL,
	[BombeiroPossuiBarco] [char](3) NULL,
	[FotoBombeiro1] [varchar](20) NULL,
	[FotoBombeiro2] [varchar](20) NULL,
	[PossuiHospital] [char](3) NULL,
	[QuantidadeHospital] [int] NULL,
	[HospitalPossuiBarco] [char](3) NULL,
	[FotoHospital1] [varchar](20) NULL,
	[FotoHospital2] [varchar](20) NULL,
	[PossuiPostoSaude] [char](3) NULL,
	[QuantidadePostoSaude] [int] NULL,
	[PostoSaudePossuiBarco] [char](3) NULL,
	[FotoPostoSaude1] [varchar](20) NULL,
	[FotoPostoSaude2] [varchar](20) NULL,
	[PossuiPostoPolicial] [char](3) NULL,
	[QuantidadePostoPolicial] [int] NULL,
	[PostoPolicialPossuiBarco] [char](3) NULL,
	[FotoPostoPolicial1] [varchar](20) NULL,
	[FotoPostoPolicial2] [varchar](20) NULL,
	[PossuiTelefoniaCelular] [char](3) NULL,
	[QuaisTelefoniasCelular] [varchar](100) NULL,
	[PossuiTelefoniaFixa] [char](3) NULL,
 CONSTRAINT [ServiçosEmergenciaisMunicipio] PRIMARY KEY CLUSTERED 
(
	[IdFormulario] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorAvisoAluno]'))
ALTER TABLE [dbo].[tblInformacaoCondutorAvisoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor8] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorAvisoAluno] CHECK CONSTRAINT [ReftblInformacaoCondutor8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAvisoAluno9]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorAvisoAluno]'))
ALTER TABLE [dbo].[tblInformacaoCondutorAvisoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAvisoAluno9] FOREIGN KEY([IdTipoAvisoAluno])
REFERENCES [dbo].[tblTipoAvisoAluno] ([IdTipoAvisoAluno])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorAvisoAluno] CHECK CONSTRAINT [ReftblTipoAvisoAluno9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoProfessor17]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAvisoAluno]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorAvisoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoProfessor17] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoProfessor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorAvisoAluno] CHECK CONSTRAINT [ReftblCabecalhoProfessor17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAvisoAluno1635643]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAvisoAluno]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorAvisoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAvisoAluno1635643] FOREIGN KEY([IdTipoAvisoAluno])
REFERENCES [dbo].[tblTipoAvisoAluno] ([IdTipoAvisoAluno])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorAvisoAluno] CHECK CONSTRAINT [ReftblTipoAvisoAluno1635643]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor49]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorContrato]'))
ALTER TABLE [dbo].[tblInformacaoCondutorContrato]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor49] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorContrato] CHECK CONSTRAINT [ReftblInformacaoCondutor49]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoContrato50]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorContrato]'))
ALTER TABLE [dbo].[tblInformacaoCondutorContrato]  WITH CHECK ADD  CONSTRAINT [ReftblTipoContrato50] FOREIGN KEY([IdTipoContrato])
REFERENCES [dbo].[tblTipoContrato] ([IdTipoContrato])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorContrato] CHECK CONSTRAINT [ReftblTipoContrato50]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoProfessor14]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorProvidencia]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorProvidencia]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoProfessor14] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoProfessor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorProvidencia] CHECK CONSTRAINT [ReftblCabecalhoProfessor14]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProvidenciaProfessor15234]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorProvidencia]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorProvidencia]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProvidenciaProfessor15234] FOREIGN KEY([IdTipoProvidenciaProfessor])
REFERENCES [dbo].[tblTipoProvidenciaProfessor] ([IdTipoProvidenciaProfessor])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorProvidencia] CHECK CONSTRAINT [ReftblTipoProvidenciaProfessor15234]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoProfessor9]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAlunoReclama]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoReclama]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoProfessor9] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoProfessor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoReclama] CHECK CONSTRAINT [ReftblCabecalhoProfessor9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoReclamacao82342]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAlunoReclama]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoReclama]  WITH CHECK ADD  CONSTRAINT [ReftblTipoReclamacao82342] FOREIGN KEY([IdTipoReclamacao])
REFERENCES [dbo].[tblTipoReclamacao] ([IdTipoReclamacao])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoReclama] CHECK CONSTRAINT [ReftblTipoReclamacao82342]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoProfessor13]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAlunoNaoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoNaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoProfessor13] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoProfessor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoNaoEscola] CHECK CONSTRAINT [ReftblCabecalhoProfessor13]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAlunoNaoEscola122323]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAlunoNaoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoNaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAlunoNaoEscola122323] FOREIGN KEY([IdTipoAlunoNaoEscola])
REFERENCES [dbo].[tblTipoAlunoNaoEscola] ([IdTipoAlunoNaoEscola])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoNaoEscola] CHECK CONSTRAINT [ReftblTipoAlunoNaoEscola122323]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoProfessor6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoProfessor]'))
ALTER TABLE [dbo].[tblCaracterizacaoProfessor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoProfessor6] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoProfessor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoProfessor] CHECK CONSTRAINT [ReftblCabecalhoProfessor6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoProfessor11]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAlunoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoProfessor11] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoProfessor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoEscola] CHECK CONSTRAINT [ReftblCabecalhoProfessor11]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroTransporte105634]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoProfessorAlunoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroTransporte105634] FOREIGN KEY([IdTipoOutroTransporte])
REFERENCES [dbo].[tblTipoOutroTransporte] ([IdTipoOutroTransporte])
GO
ALTER TABLE [dbo].[tblPercepcaoProfessorAlunoEscola] CHECK CONSTRAINT [ReftblTipoOutroTransporte105634]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoProfessor5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoProfessor]'))
ALTER TABLE [dbo].[tblIdentificacaoProfessor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoProfessor5] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoProfessor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoProfessor] CHECK CONSTRAINT [ReftblCabecalhoProfessor5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade4234]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoProfessor]'))
ALTER TABLE [dbo].[tblIdentificacaoProfessor]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade4234] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
ALTER TABLE [dbo].[tblIdentificacaoProfessor] CHECK CONSTRAINT [ReftblTipoEscolaridade4234]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor47]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorDonoBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorDonoBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor47] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorDonoBarco] CHECK CONSTRAINT [ReftblInformacaoCondutor47]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoDonoBarco48]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorDonoBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorDonoBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoDonoBarco48] FOREIGN KEY([IdTipoDonoBarco])
REFERENCES [dbo].[tblTipoDonoBarco] ([IdTipoDonoBarco])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorDonoBarco] CHECK CONSTRAINT [ReftblTipoDonoBarco48]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoPais25]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisDonoBarco]'))
ALTER TABLE [dbo].[tblInformacaoPaisDonoBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoPais25] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPaisDonoBarco] CHECK CONSTRAINT [ReftblInformacaoPais25]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoDonoBarco2437]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisDonoBarco]'))
ALTER TABLE [dbo].[tblInformacaoPaisDonoBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoDonoBarco2437] FOREIGN KEY([IdTipoDonoBarco])
REFERENCES [dbo].[tblTipoDonoBarco] ([IdTipoDonoBarco])
GO
ALTER TABLE [dbo].[tblInformacaoPaisDonoBarco] CHECK CONSTRAINT [ReftblTipoDonoBarco2437]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoPais21]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisBarcoAtrasa]'))
ALTER TABLE [dbo].[tblInformacaoPaisBarcoAtrasa]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoPais21] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPaisBarcoAtrasa] CHECK CONSTRAINT [ReftblInformacaoPais21]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProvidenciaPai20]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisBarcoAtrasa]'))
ALTER TABLE [dbo].[tblInformacaoPaisBarcoAtrasa]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProvidenciaPai20] FOREIGN KEY([IdTipoProvidenciaPai])
REFERENCES [dbo].[tblTipoProvidenciaPai] ([IdTipoProvidenciaPai])
GO
ALTER TABLE [dbo].[tblInformacaoPaisBarcoAtrasa] CHECK CONSTRAINT [ReftblTipoProvidenciaPai20]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoPais28]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisAlunoNaoEscola]'))
ALTER TABLE [dbo].[tblInformacaoPaisAlunoNaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoPais28] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPaisAlunoNaoEscola] CHECK CONSTRAINT [ReftblInformacaoPais28]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAlunoNaoEscola3037]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisAlunoNaoEscola]'))
ALTER TABLE [dbo].[tblInformacaoPaisAlunoNaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAlunoNaoEscola3037] FOREIGN KEY([IdTipoAlunoNaoEscola])
REFERENCES [dbo].[tblTipoAlunoNaoEscola] ([IdTipoAlunoNaoEscola])
GO
ALTER TABLE [dbo].[tblInformacaoPaisAlunoNaoEscola] CHECK CONSTRAINT [ReftblTipoAlunoNaoEscola3037]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoPais32]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisSugestao]'))
ALTER TABLE [dbo].[tblInformacaoPaisSugestao]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoPais32] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPaisSugestao] CHECK CONSTRAINT [ReftblInformacaoPais32]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoSugestao3137]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisSugestao]'))
ALTER TABLE [dbo].[tblInformacaoPaisSugestao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoSugestao3137] FOREIGN KEY([IdTipoSugestao])
REFERENCES [dbo].[tblTipoSugestao] ([IdTipoSugestao])
GO
ALTER TABLE [dbo].[tblInformacaoPaisSugestao] CHECK CONSTRAINT [ReftblTipoSugestao3137]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoPais18]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisProvidencia]'))
ALTER TABLE [dbo].[tblInformacaoPaisProvidencia]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoPais18] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPaisProvidencia] CHECK CONSTRAINT [ReftblInformacaoPais18]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoProvidenciaPai19]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisProvidencia]'))
ALTER TABLE [dbo].[tblInformacaoPaisProvidencia]  WITH CHECK ADD  CONSTRAINT [ReftblTipoProvidenciaPai19] FOREIGN KEY([IdTipoProvidenciaPai])
REFERENCES [dbo].[tblTipoProvidenciaPai] ([IdTipoProvidenciaPai])
GO
ALTER TABLE [dbo].[tblInformacaoPaisProvidencia] CHECK CONSTRAINT [ReftblTipoProvidenciaPai19]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoPais17]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisOutroTransporte]'))
ALTER TABLE [dbo].[tblInformacaoPaisOutroTransporte]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoPais17] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPaisOutroTransporte] CHECK CONSTRAINT [ReftblInformacaoPais17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroTransporte1637]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisOutroTransporte]'))
ALTER TABLE [dbo].[tblInformacaoPaisOutroTransporte]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroTransporte1637] FOREIGN KEY([IdTipoOutroTransporte])
REFERENCES [dbo].[tblTipoOutroTransporte] ([IdTipoOutroTransporte])
GO
ALTER TABLE [dbo].[tblInformacaoPaisOutroTransporte] CHECK CONSTRAINT [ReftblTipoOutroTransporte1637]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoPais23]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisEscolheBarco]'))
ALTER TABLE [dbo].[tblInformacaoPaisEscolheBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoPais23] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPaisEscolheBarco] CHECK CONSTRAINT [ReftblInformacaoPais23]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolheBarco2237]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisEscolheBarco]'))
ALTER TABLE [dbo].[tblInformacaoPaisEscolheBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolheBarco2237] FOREIGN KEY([IdTipoEscolheBarco])
REFERENCES [dbo].[tblTipoEscolheBarco] ([IdTipoEscolheBarco])
GO
ALTER TABLE [dbo].[tblInformacaoPaisEscolheBarco] CHECK CONSTRAINT [ReftblTipoEscolheBarco2237]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoPais27]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisEpocaPior]'))
ALTER TABLE [dbo].[tblInformacaoPaisEpocaPior]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoPais27] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPaisEpocaPior] CHECK CONSTRAINT [ReftblInformacaoPais27]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEpoca2637]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisEpocaPior]'))
ALTER TABLE [dbo].[tblInformacaoPaisEpocaPior]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEpoca2637] FOREIGN KEY([IdTipoEpoca])
REFERENCES [dbo].[tblTipoEpoca] ([IdTipoEpoca])
GO
ALTER TABLE [dbo].[tblInformacaoPaisEpocaPior] CHECK CONSTRAINT [ReftblTipoEpoca2637]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor51]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEscolheBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorEscolheBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor51] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorEscolheBarco] CHECK CONSTRAINT [ReftblInformacaoCondutor51]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolheBarco52]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEscolheBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorEscolheBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolheBarco52] FOREIGN KEY([IdTipoEscolheBarco])
REFERENCES [dbo].[tblTipoEscolheBarco] ([IdTipoEscolheBarco])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorEscolheBarco] CHECK CONSTRAINT [ReftblTipoEscolheBarco52]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor32]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEstrago]'))
ALTER TABLE [dbo].[tblInformacaoCondutorEstrago]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor32] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorEstrago] CHECK CONSTRAINT [ReftblInformacaoCondutor32]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEstrago33]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorEstrago]'))
ALTER TABLE [dbo].[tblInformacaoCondutorEstrago]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEstrago33] FOREIGN KEY([IdTipoEstrago])
REFERENCES [dbo].[tblTipoEstrago] ([IdTipoEstrago])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorEstrago] CHECK CONSTRAINT [ReftblTipoEstrago33]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor40]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorGuardaBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorGuardaBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor40] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorGuardaBarco] CHECK CONSTRAINT [ReftblInformacaoCondutor40]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoGuardaBarco41]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorGuardaBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorGuardaBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoGuardaBarco41] FOREIGN KEY([IdTipoGuardaBarco])
REFERENCES [dbo].[tblTipoGuardaBarco] ([IdTipoGuardaBarco])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorGuardaBarco] CHECK CONSTRAINT [ReftblTipoGuardaBarco41]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDiretor21435]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorAlunoNaoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoNaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDiretor21435] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoNaoEscola] CHECK CONSTRAINT [ReftblCabecalhoDiretor21435]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAlunoNaoEscola2045643]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorAlunoNaoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoNaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAlunoNaoEscola2045643] FOREIGN KEY([IdTipoAlunoNaoEscola])
REFERENCES [dbo].[tblTipoAlunoNaoEscola] ([IdTipoAlunoNaoEscola])
GO
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoNaoEscola] CHECK CONSTRAINT [ReftblTipoAlunoNaoEscola2045643]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroAcompanhante31632]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPaisTransportaOutro]'))
ALTER TABLE [dbo].[tblInformacaoPaisTransportaOutro]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroAcompanhante31632] FOREIGN KEY([IdTipoOutroAcompanhante])
REFERENCES [dbo].[tblTipoOutroAcompanhante] ([IdTipoOutroAcompanhante])
GO
ALTER TABLE [dbo].[tblInformacaoPaisTransportaOutro] CHECK CONSTRAINT [ReftblTipoOutroAcompanhante31632]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor13]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorOutroAcompanhante]'))
ALTER TABLE [dbo].[tblInformacaoCondutorOutroAcompanhante]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor13] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorOutroAcompanhante] CHECK CONSTRAINT [ReftblInformacaoCondutor13]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroAcompanhante12]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorOutroAcompanhante]'))
ALTER TABLE [dbo].[tblInformacaoCondutorOutroAcompanhante]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroAcompanhante12] FOREIGN KEY([IdTipoOutroAcompanhante])
REFERENCES [dbo].[tblTipoOutroAcompanhante] ([IdTipoOutroAcompanhante])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorOutroAcompanhante] CHECK CONSTRAINT [ReftblTipoOutroAcompanhante12]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCaracterizacaoDiretor5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoDiretorOutraExperiencia]'))
ALTER TABLE [dbo].[tblCaracterizacaoDiretorOutraExperiencia]  WITH CHECK ADD  CONSTRAINT [ReftblCaracterizacaoDiretor5] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCaracterizacaoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoDiretorOutraExperiencia] CHECK CONSTRAINT [ReftblCaracterizacaoDiretor5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutraExperiencia6345]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoDiretorOutraExperiencia]'))
ALTER TABLE [dbo].[tblCaracterizacaoDiretorOutraExperiencia]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutraExperiencia6345] FOREIGN KEY([IdTipoOutraExperiencia])
REFERENCES [dbo].[tblTipoOutraExperiencia] ([IdTipoOutraExperiencia])
GO
ALTER TABLE [dbo].[tblCaracterizacaoDiretorOutraExperiencia] CHECK CONSTRAINT [ReftblTipoOutraExperiencia6345]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDiretor4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoDiretor]'))
ALTER TABLE [dbo].[tblCaracterizacaoDiretor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDiretor4] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoDiretor] CHECK CONSTRAINT [ReftblCabecalhoDiretor4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDiretor2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoDiretor]'))
ALTER TABLE [dbo].[tblIdentificacaoDiretor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDiretor2] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoDiretor] CHECK CONSTRAINT [ReftblCabecalhoDiretor2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade3345]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoDiretor]'))
ALTER TABLE [dbo].[tblIdentificacaoDiretor]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade3345] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
ALTER TABLE [dbo].[tblIdentificacaoDiretor] CHECK CONSTRAINT [ReftblTipoEscolaridade3345]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDiretor7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEscola]'))
ALTER TABLE [dbo].[tblIdentificacaoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDiretor7] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoEscola] CHECK CONSTRAINT [ReftblCabecalhoDiretor7]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDiretor17]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorAlunoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDiretor17] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoEscola] CHECK CONSTRAINT [ReftblCabecalhoDiretor17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroTransporte19867]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorAlunoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroTransporte19867] FOREIGN KEY([IdTipoOutroTransporte])
REFERENCES [dbo].[tblTipoOutroTransporte] ([IdTipoOutroTransporte])
GO
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoEscola] CHECK CONSTRAINT [ReftblTipoOutroTransporte19867]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDiretor14657]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorAlunoReclama]'))
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoReclama]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDiretor14657] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoReclama] CHECK CONSTRAINT [ReftblCabecalhoDiretor14657]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoReclamacao152345]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorAlunoReclama]'))
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoReclama]  WITH CHECK ADD  CONSTRAINT [ReftblTipoReclamacao152345] FOREIGN KEY([IdTipoReclamacao])
REFERENCES [dbo].[tblTipoReclamacao] ([IdTipoReclamacao])
GO
ALTER TABLE [dbo].[tblPercepcaoDiretorAlunoReclama] CHECK CONSTRAINT [ReftblTipoReclamacao152345]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDiretor164564]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoDiretorRendimentoAcademico]'))
ALTER TABLE [dbo].[tblPercepcaoDiretorRendimentoAcademico]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDiretor164564] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDiretor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoDiretorRendimentoAcademico] CHECK CONSTRAINT [ReftblCabecalhoDiretor164564]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor25]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorPagaManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorPagaManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor25] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorPagaManutencao] CHECK CONSTRAINT [ReftblInformacaoCondutor25]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoPagaManutencao27]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorPagaManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorPagaManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoPagaManutencao27] FOREIGN KEY([IdTipoPagaManutencao])
REFERENCES [dbo].[tblTipoPagaManutencao] ([IdTipoPagaManutencao])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorPagaManutencao] CHECK CONSTRAINT [ReftblTipoPagaManutencao27]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoSecretario10]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioOutroTransporte]'))
ALTER TABLE [dbo].[tblInformacaoSecretarioOutroTransporte]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoSecretario10] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoSecretario] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoSecretarioOutroTransporte] CHECK CONSTRAINT [ReftblCabecalhoSecretario10]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoOutroTransporte969]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioOutroTransporte]'))
ALTER TABLE [dbo].[tblInformacaoSecretarioOutroTransporte]  WITH CHECK ADD  CONSTRAINT [ReftblTipoOutroTransporte969] FOREIGN KEY([IdTipoOutroTransporte])
REFERENCES [dbo].[tblTipoOutroTransporte] ([IdTipoOutroTransporte])
GO
ALTER TABLE [dbo].[tblInformacaoSecretarioOutroTransporte] CHECK CONSTRAINT [ReftblTipoOutroTransporte969]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDadosParada]'))
ALTER TABLE [dbo].[tblDadosParada]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho3] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblDadosParada] CHECK CONSTRAINT [ReftblCabecalhoDesempenho3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoParada7234]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDadosParada]'))
ALTER TABLE [dbo].[tblDadosParada]  WITH CHECK ADD  CONSTRAINT [ReftblTipoParada7234] FOREIGN KEY([IdTipoParada])
REFERENCES [dbo].[tblTipoParada] ([IdTipoParada])
GO
ALTER TABLE [dbo].[tblDadosParada] CHECK CONSTRAINT [ReftblTipoParada7234]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho10]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDadosParadaQuantidade]'))
ALTER TABLE [dbo].[tblDadosParadaQuantidade]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho10] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblDadosParadaQuantidade] CHECK CONSTRAINT [ReftblCabecalhoDesempenho10]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDadosOperacionaisInicial]'))
ALTER TABLE [dbo].[tblDadosOperacionaisInicial]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho2] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblDadosOperacionaisInicial] CHECK CONSTRAINT [ReftblCabecalhoDesempenho2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho16]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEventosExternos]'))
ALTER TABLE [dbo].[tblEventosExternos]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho16] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblEventosExternos] CHECK CONSTRAINT [ReftblCabecalhoDesempenho16]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho19]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblComportamentoEstabilidade]'))
ALTER TABLE [dbo].[tblComportamentoEstabilidade]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho19] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblComportamentoEstabilidade] CHECK CONSTRAINT [ReftblCabecalhoDesempenho19]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho22]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDadosOperacionaisFinal]'))
ALTER TABLE [dbo].[tblDadosOperacionaisFinal]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho22] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblDadosOperacionaisFinal] CHECK CONSTRAINT [ReftblCabecalhoDesempenho22]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDadosEscola]'))
ALTER TABLE [dbo].[tblDadosEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho4] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblDadosEscola] CHECK CONSTRAINT [ReftblCabecalhoDesempenho4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoParada82342]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDadosEscola]'))
ALTER TABLE [dbo].[tblDadosEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoParada82342] FOREIGN KEY([IdTipoParada])
REFERENCES [dbo].[tblTipoParada] ([IdTipoParada])
GO
ALTER TABLE [dbo].[tblDadosEscola] CHECK CONSTRAINT [ReftblTipoParada82342]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDadosEntrevista]'))
ALTER TABLE [dbo].[tblDadosEntrevista]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho6] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblDadosEntrevista] CHECK CONSTRAINT [ReftblCabecalhoDesempenho6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoParada92342]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDadosEntrevista]'))
ALTER TABLE [dbo].[tblDadosEntrevista]  WITH CHECK ADD  CONSTRAINT [ReftblTipoParada92342] FOREIGN KEY([IdTipoParada])
REFERENCES [dbo].[tblTipoParada] ([IdTipoParada])
GO
ALTER TABLE [dbo].[tblDadosEntrevista] CHECK CONSTRAINT [ReftblTipoParada92342]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho20]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblImagens]'))
ALTER TABLE [dbo].[tblImagens]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho20] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblImagens] CHECK CONSTRAINT [ReftblCabecalhoDesempenho20]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoDesempenho12]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEventosInternos]'))
ALTER TABLE [dbo].[tblEventosInternos]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoDesempenho12] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoDesempenho] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblEventosInternos] CHECK CONSTRAINT [ReftblCabecalhoDesempenho12]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKInformacaoCondutorFrequencia]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorFrequencia]'))
ALTER TABLE [dbo].[tblInformacaoCondutorFrequencia]  WITH CHECK ADD  CONSTRAINT [FKInformacaoCondutorFrequencia] FOREIGN KEY([IdTipoFrequencia])
REFERENCES [dbo].[tblTipoFrequencia] ([IdTipoFrequencia])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorFrequencia] CHECK CONSTRAINT [FKInformacaoCondutorFrequencia]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor21]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorQuandoManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorQuandoManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor21] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorQuandoManutencao] CHECK CONSTRAINT [ReftblInformacaoCondutor21]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoQuandoManutencao22]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorQuandoManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorQuandoManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoQuandoManutencao22] FOREIGN KEY([IdTipoQuandoManutencao])
REFERENCES [dbo].[tblTipoQuandoManutencao] ([IdTipoQuandoManutencao])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorQuandoManutencao] CHECK CONSTRAINT [ReftblTipoQuandoManutencao22]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoEscola12657]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoEscolaResponsavelBarco]'))
ALTER TABLE [dbo].[tblInformacaoEscolaResponsavelBarco]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoEscola12657] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoEscola] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoEscolaResponsavelBarco] CHECK CONSTRAINT [ReftblIdentificacaoEscola12657]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoResposta13756]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoEscolaResponsavelBarco]'))
ALTER TABLE [dbo].[tblInformacaoEscolaResponsavelBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoResposta13756] FOREIGN KEY([IdTipoResposta])
REFERENCES [dbo].[tblTipoResposta] ([IdTipoResposta])
GO
ALTER TABLE [dbo].[tblInformacaoEscolaResponsavelBarco] CHECK CONSTRAINT [ReftblTipoResposta13756]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoEscola9]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEscolaPlanejamentoRota]'))
ALTER TABLE [dbo].[tblIdentificacaoEscolaPlanejamentoRota]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoEscola9] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoEscola] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoEscolaPlanejamentoRota] CHECK CONSTRAINT [ReftblIdentificacaoEscola9]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoResposta8756]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEscolaPlanejamentoRota]'))
ALTER TABLE [dbo].[tblIdentificacaoEscolaPlanejamentoRota]  WITH CHECK ADD  CONSTRAINT [ReftblTipoResposta8756] FOREIGN KEY([IdTipoResposta])
REFERENCES [dbo].[tblTipoResposta] ([IdTipoResposta])
GO
ALTER TABLE [dbo].[tblIdentificacaoEscolaPlanejamentoRota] CHECK CONSTRAINT [ReftblTipoResposta8756]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoEscola1065]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEscolaAtendeTurno]'))
ALTER TABLE [dbo].[tblIdentificacaoEscolaAtendeTurno]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoEscola1065] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoEscola] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoEscolaAtendeTurno] CHECK CONSTRAINT [ReftblIdentificacaoEscola1065]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoTurno11565]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEscolaAtendeTurno]'))
ALTER TABLE [dbo].[tblIdentificacaoEscolaAtendeTurno]  WITH CHECK ADD  CONSTRAINT [ReftblTipoTurno11565] FOREIGN KEY([IdTipoTurno])
REFERENCES [dbo].[tblTipoTurno] ([IdTipoTurno])
GO
ALTER TABLE [dbo].[tblIdentificacaoEscolaAtendeTurno] CHECK CONSTRAINT [ReftblTipoTurno11565]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor37]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaReparo]'))
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaReparo]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor37] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaReparo] CHECK CONSTRAINT [ReftblInformacaoCondutor37]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoRealizaManutencao44]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaReparo]'))
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaReparo]  WITH CHECK ADD  CONSTRAINT [ReftblTipoRealizaManutencao44] FOREIGN KEY([IdTipoRealizaManutencao])
REFERENCES [dbo].[tblTipoRealizaManutencao] ([IdTipoRealizaManutencao])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaReparo] CHECK CONSTRAINT [ReftblTipoRealizaManutencao44]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor24]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor24] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaManutencao] CHECK CONSTRAINT [ReftblInformacaoCondutor24]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoRealizaManutencao23]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorRealizaManutencao]'))
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaManutencao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoRealizaManutencao23] FOREIGN KEY([IdTipoRealizaManutencao])
REFERENCES [dbo].[tblTipoRealizaManutencao] ([IdTipoRealizaManutencao])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorRealizaManutencao] CHECK CONSTRAINT [ReftblTipoRealizaManutencao23]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno10]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRota]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoRota]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno10] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoRota] CHECK CONSTRAINT [ReftblCabecalhoAluno10]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno21]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaAjudaBarqueiro]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaAjudaBarqueiro]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno21] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaAjudaBarqueiro] CHECK CONSTRAINT [ReftblCabecalhoAluno21]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAjuda2235]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaAjudaBarqueiro]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaAjudaBarqueiro]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAjuda2235] FOREIGN KEY([IdTipoAjuda])
REFERENCES [dbo].[tblTipoAjuda] ([IdTipoAjuda])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaAjudaBarqueiro] CHECK CONSTRAINT [ReftblTipoAjuda2235]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno19]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaEpocaPior]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaEpocaPior]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno19] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaEpocaPior] CHECK CONSTRAINT [ReftblCabecalhoAluno19]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEpoca2735]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaEpocaPior]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaEpocaPior]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEpoca2735] FOREIGN KEY([IdTipoEpoca])
REFERENCES [dbo].[tblTipoEpoca] ([IdTipoEpoca])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaEpocaPior] CHECK CONSTRAINT [ReftblTipoEpoca2735]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno13]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaFazCaminhoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaFazCaminhoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno13] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaFazCaminhoEscola] CHECK CONSTRAINT [ReftblCabecalhoAluno13]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoFazCaminhoEscola1435]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaFazCaminhoEscola]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaFazCaminhoEscola]  WITH CHECK ADD  CONSTRAINT [ReftblTipoFazCaminhoEscola1435] FOREIGN KEY([IdTipoFazCaminhoEscola])
REFERENCES [dbo].[tblTipoFazCaminhoEscola] ([IdTipoFazCaminhoEscola])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaFazCaminhoEscola] CHECK CONSTRAINT [ReftblTipoFazCaminhoEscola1435]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno15]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaFazOutraCoisa]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaFazOutraCoisa]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno15] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaFazOutraCoisa] CHECK CONSTRAINT [ReftblCabecalhoAluno15]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoFazOutraCoisa1635]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoRotaFazOutraCoisa]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaFazOutraCoisa]  WITH CHECK ADD  CONSTRAINT [ReftblTipoFazOutraCoisa1635] FOREIGN KEY([IdTipoFazOutraCoisa])
REFERENCES [dbo].[tblTipoFazOutraCoisa] ([IdTipoFazOutraCoisa])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoRotaFazOutraCoisa] CHECK CONSTRAINT [ReftblTipoFazOutraCoisa1635]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno24]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPosTesteAvaliacaoLancha]'))
ALTER TABLE [dbo].[tblPosTesteAvaliacaoLancha]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno24] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPosTesteAvaliacaoLancha] CHECK CONSTRAINT [ReftblCabecalhoAluno24]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno23]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPosTesteAuno]'))
ALTER TABLE [dbo].[tblPosTesteAuno]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno23] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPosTesteAuno] CHECK CONSTRAINT [ReftblCabecalhoAluno23]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno25]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPosTesteMolhaAluno]'))
ALTER TABLE [dbo].[tblPosTesteMolhaAluno]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno25] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPosTesteMolhaAluno] CHECK CONSTRAINT [ReftblCabecalhoAluno25]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoMolhaAluno2635]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPosTesteMolhaAluno]'))
ALTER TABLE [dbo].[tblPosTesteMolhaAluno]  WITH CHECK ADD  CONSTRAINT [ReftblTipoMolhaAluno2635] FOREIGN KEY([IdTipoMolhaAluno])
REFERENCES [dbo].[tblTipoMolhaAluno] ([IdTipoMolhaAluno])
GO
ALTER TABLE [dbo].[tblPosTesteMolhaAluno] CHECK CONSTRAINT [ReftblTipoMolhaAluno2635]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoAluno]'))
ALTER TABLE [dbo].[tblIdentificacaoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno4] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoAluno] CHECK CONSTRAINT [ReftblCabecalhoAluno4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade335]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoAluno]'))
ALTER TABLE [dbo].[tblIdentificacaoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade335] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
ALTER TABLE [dbo].[tblIdentificacaoAluno] CHECK CONSTRAINT [ReftblTipoEscolaridade335]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno17]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoMelhoria]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoMelhoria]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno17] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoMelhoria] CHECK CONSTRAINT [ReftblCabecalhoAluno17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoMelhoria1835]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoAlunoMelhoria]'))
ALTER TABLE [dbo].[tblPercepcaoAlunoMelhoria]  WITH CHECK ADD  CONSTRAINT [ReftblTipoMelhoria1835] FOREIGN KEY([IdMelhoria])
REFERENCES [dbo].[tblTipoMelhoria] ([IdMelhoria])
GO
ALTER TABLE [dbo].[tblPercepcaoAlunoMelhoria] CHECK CONSTRAINT [ReftblTipoMelhoria1835]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoAluno5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAluno]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAluno]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoAluno5] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAluno] CHECK CONSTRAINT [ReftblCabecalhoAluno5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor28]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorServico]'))
ALTER TABLE [dbo].[tblInformacaoCondutorServico]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor28] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorServico] CHECK CONSTRAINT [ReftblInformacaoCondutor28]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoServico29]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorServico]'))
ALTER TABLE [dbo].[tblInformacaoCondutorServico]  WITH CHECK ADD  CONSTRAINT [ReftblTipoServico29] FOREIGN KEY([IdTipoServico])
REFERENCES [dbo].[tblTipoServico] ([IdTipoServico])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorServico] CHECK CONSTRAINT [ReftblTipoServico29]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FKtblInformacaoCondutorPercursoTempo]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorPercursoTempo]'))
ALTER TABLE [dbo].[tblInformacaoCondutorPercursoTempo]  WITH CHECK ADD  CONSTRAINT [FKtblInformacaoCondutorPercursoTempo] FOREIGN KEY([IdPercursoTempo])
REFERENCES [dbo].[tblTipoPercursoTempo] ([IdTipoPercursoTempo])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorPercursoTempo] CHECK CONSTRAINT [FKtblInformacaoCondutorPercursoTempo]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor11]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTransportaOutro]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTransportaOutro]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor11] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorTransportaOutro] CHECK CONSTRAINT [ReftblInformacaoCondutor11]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoTransportaOutro10]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTransportaOutro]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTransportaOutro]  WITH CHECK ADD  CONSTRAINT [ReftblTipoTransportaOutro10] FOREIGN KEY([IdTipoTransportaOutro])
REFERENCES [dbo].[tblTipoTransportaOutro] ([IdTipoTransportaOutro])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorTransportaOutro] CHECK CONSTRAINT [ReftblTipoTransportaOutro10]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor17]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrocaBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTrocaBarco]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor17] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorTrocaBarco] CHECK CONSTRAINT [ReftblInformacaoCondutor17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoTrocaBarco16]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrocaBarco]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTrocaBarco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoTrocaBarco16] FOREIGN KEY([IdTipoTrocaBarco])
REFERENCES [dbo].[tblTipoTrocaBarco] ([IdTipoTrocaBarco])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorTrocaBarco] CHECK CONSTRAINT [ReftblTipoTrocaBarco16]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEventosExternos18234]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblObstaculos]'))
ALTER TABLE [dbo].[tblObstaculos]  WITH CHECK ADD  CONSTRAINT [ReftblEventosExternos18234] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblEventosExternos] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblObstaculos] CHECK CONSTRAINT [ReftblEventosExternos18234]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoObstaculos17]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblObstaculos]'))
ALTER TABLE [dbo].[tblObstaculos]  WITH CHECK ADD  CONSTRAINT [ReftblTipoObstaculos17] FOREIGN KEY([IdTipoObstaculos])
REFERENCES [dbo].[tblTipoObstaculos] ([IdTipoObstaculos])
GO
ALTER TABLE [dbo].[tblObstaculos] CHECK CONSTRAINT [ReftblTipoObstaculos17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor34]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorMotivoQuebra]'))
ALTER TABLE [dbo].[tblInformacaoCondutorMotivoQuebra]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor34] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorMotivoQuebra] CHECK CONSTRAINT [ReftblInformacaoCondutor34]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoMotivoQuebra36]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorMotivoQuebra]'))
ALTER TABLE [dbo].[tblInformacaoCondutorMotivoQuebra]  WITH CHECK ADD  CONSTRAINT [ReftblTipoMotivoQuebra36] FOREIGN KEY([IdTipoMotivo])
REFERENCES [dbo].[tblTipoMotivoQuebra] ([IdTipoMotivo])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorMotivoQuebra] CHECK CONSTRAINT [ReftblTipoMotivoQuebra36]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblInformacaoCondutor19]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrabalhaRota]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTrabalhaRota]  WITH CHECK ADD  CONSTRAINT [ReftblInformacaoCondutor19] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblInformacaoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorTrabalhaRota] CHECK CONSTRAINT [ReftblInformacaoCondutor19]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoNaoTrabalhaRota20]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutorTrabalhaRota]'))
ALTER TABLE [dbo].[tblInformacaoCondutorTrabalhaRota]  WITH CHECK ADD  CONSTRAINT [ReftblTipoNaoTrabalhaRota20] FOREIGN KEY([IdTipoNaoTrabalhaRota])
REFERENCES [dbo].[tblTipoNaoTrabalhaRota] ([IdTipoNaoTrabalhaRota])
GO
ALTER TABLE [dbo].[tblInformacaoCondutorTrabalhaRota] CHECK CONSTRAINT [ReftblTipoNaoTrabalhaRota20]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCaracterizacaoFamiliaParentesPais]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaParentes]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaParentes]  WITH CHECK ADD  CONSTRAINT [ReftblCaracterizacaoFamiliaParentesPais] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCaracterizacaoFamiliaPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaParentes] CHECK CONSTRAINT [ReftblCaracterizacaoFamiliaParentesPais]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoParentes]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaParentes]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaParentes]  WITH CHECK ADD  CONSTRAINT [ReftblTipoParentes] FOREIGN KEY([IdTipoParente])
REFERENCES [dbo].[tblTipoParentes] ([IdTipoParente])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaParentes] CHECK CONSTRAINT [ReftblTipoParentes]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCaracterizacaoFamiliaPais14]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaPaisAuxilio]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPaisAuxilio]  WITH CHECK ADD  CONSTRAINT [ReftblCaracterizacaoFamiliaPais14] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCaracterizacaoFamiliaPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPaisAuxilio] CHECK CONSTRAINT [ReftblCaracterizacaoFamiliaPais14]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAuxilio11896]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaPaisAuxilio]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPaisAuxilio]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAuxilio11896] FOREIGN KEY([IdTipoAuxilio])
REFERENCES [dbo].[tblTipoAuxilio] ([IdTipoAuxilio])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPaisAuxilio] CHECK CONSTRAINT [ReftblTipoAuxilio11896]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCaracterizacaoFamiliaPais10]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaPaisTrabalho]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPaisTrabalho]  WITH CHECK ADD  CONSTRAINT [ReftblCaracterizacaoFamiliaPais10] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCaracterizacaoFamiliaPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPaisTrabalho] CHECK CONSTRAINT [ReftblCaracterizacaoFamiliaPais10]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoTrabalho937]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaPaisTrabalho]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPaisTrabalho]  WITH CHECK ADD  CONSTRAINT [ReftblTipoTrabalho937] FOREIGN KEY([IdTipoTrabalho])
REFERENCES [dbo].[tblTipoTrabalho] ([IdTipoTrabalho])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPaisTrabalho] CHECK CONSTRAINT [ReftblTipoTrabalho937]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCaracterizacaoFamiliaParentesAluno]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAlunoParentes]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoParentes]  WITH CHECK ADD  CONSTRAINT [ReftblCaracterizacaoFamiliaParentesAluno] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCaracterizacaoFamiliaAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoParentes] CHECK CONSTRAINT [ReftblCaracterizacaoFamiliaParentesAluno]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoParentesAluno]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAlunoParentes]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoParentes]  WITH CHECK ADD  CONSTRAINT [ReftblTipoParentesAluno] FOREIGN KEY([IdTipoParente])
REFERENCES [dbo].[tblTipoParentes] ([IdTipoParente])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoParentes] CHECK CONSTRAINT [ReftblTipoParentesAluno]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEventosInternos15234]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEmbarqueAluno]'))
ALTER TABLE [dbo].[tblEmbarqueAluno]  WITH CHECK ADD  CONSTRAINT [ReftblEventosInternos15234] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblEventosInternos] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblEmbarqueAluno] CHECK CONSTRAINT [ReftblEventosInternos15234]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEmbarque13243]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEmbarqueAluno]'))
ALTER TABLE [dbo].[tblEmbarqueAluno]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEmbarque13243] FOREIGN KEY([IdTipoEmbarque])
REFERENCES [dbo].[tblTipoEmbarque] ([IdTipoEmbarque])
GO
ALTER TABLE [dbo].[tblEmbarqueAluno] CHECK CONSTRAINT [ReftblTipoEmbarque13243]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPais15356]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPais]'))
ALTER TABLE [dbo].[tblInformacaoPais]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPais15356] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPais] CHECK CONSTRAINT [ReftblCabecalhoPais15356]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPais8674]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaPais]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPais]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPais8674] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaPais] CHECK CONSTRAINT [ReftblCabecalhoPais8674]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPais7454]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoPais]'))
ALTER TABLE [dbo].[tblIdentificacaoPais]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPais7454] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPais] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoPais] CHECK CONSTRAINT [ReftblCabecalhoPais7454]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade637]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoPais]'))
ALTER TABLE [dbo].[tblIdentificacaoPais]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade637] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
ALTER TABLE [dbo].[tblIdentificacaoPais] CHECK CONSTRAINT [ReftblTipoEscolaridade637]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoCondutor2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoCondutor]'))
ALTER TABLE [dbo].[tblCaracterizacaoCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoCondutor2] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoCondutor] CHECK CONSTRAINT [ReftblCabecalhoCondutor2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoCondutor1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoCondutor]'))
ALTER TABLE [dbo].[tblIdentificacaoCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoCondutor1] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoCondutor] CHECK CONSTRAINT [ReftblCabecalhoCondutor1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade18]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoCondutor]'))
ALTER TABLE [dbo].[tblIdentificacaoCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade18] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
ALTER TABLE [dbo].[tblIdentificacaoCondutor] CHECK CONSTRAINT [ReftblTipoEscolaridade18]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoCondutorLanchaNova]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblNovaLanchaCondutor]'))
ALTER TABLE [dbo].[tblNovaLanchaCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoCondutorLanchaNova] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblNovaLanchaCondutor] CHECK CONSTRAINT [ReftblCabecalhoCondutorLanchaNova]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoCondutor3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoCondutor]'))
ALTER TABLE [dbo].[tblInformacaoCondutor]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoCondutor3] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoCondutor] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoCondutor] CHECK CONSTRAINT [ReftblCabecalhoCondutor3]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPrefeito6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoPrefeito]'))
ALTER TABLE [dbo].[tblCaracterizacaoPrefeito]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPrefeito6] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPrefeito] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoPrefeito] CHECK CONSTRAINT [ReftblCabecalhoPrefeito6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPrefeito4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoPrefeito]'))
ALTER TABLE [dbo].[tblIdentificacaoPrefeito]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPrefeito4] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPrefeito] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoPrefeito] CHECK CONSTRAINT [ReftblCabecalhoPrefeito4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade55665]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoPrefeito]'))
ALTER TABLE [dbo].[tblIdentificacaoPrefeito]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade55665] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
ALTER TABLE [dbo].[tblIdentificacaoPrefeito] CHECK CONSTRAINT [ReftblTipoEscolaridade55665]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPrefeito7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeito]'))
ALTER TABLE [dbo].[tblInformacaoPrefeito]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPrefeito7] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPrefeito] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPrefeito] CHECK CONSTRAINT [ReftblCabecalhoPrefeito7]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPrefeito16]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoAcordo]'))
ALTER TABLE [dbo].[tblInformacaoPrefeitoAcordo]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPrefeito16] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPrefeito] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPrefeitoAcordo] CHECK CONSTRAINT [ReftblCabecalhoPrefeito16]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAcordo1356]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoAcordo]'))
ALTER TABLE [dbo].[tblInformacaoPrefeitoAcordo]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAcordo1356] FOREIGN KEY([IdTipoAcordo])
REFERENCES [dbo].[tblTipoAcordo] ([IdTipoAcordo])
GO
ALTER TABLE [dbo].[tblInformacaoPrefeitoAcordo] CHECK CONSTRAINT [ReftblTipoAcordo1356]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPrefeito19]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoResponsavelTransporEscolar]'))
ALTER TABLE [dbo].[tblInformacaoPrefeitoResponsavelTransporEscolar]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPrefeito19] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPrefeito] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPrefeitoResponsavelTransporEscolar] CHECK CONSTRAINT [ReftblCabecalhoPrefeito19]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblITipoResponsavel956]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoResponsavelTransporEscolar]'))
ALTER TABLE [dbo].[tblInformacaoPrefeitoResponsavelTransporEscolar]  WITH CHECK ADD  CONSTRAINT [ReftblITipoResponsavel956] FOREIGN KEY([IdTipoResponsavel])
REFERENCES [dbo].[tblTipoResponsavel] ([IdTipoResponsavel])
GO
ALTER TABLE [dbo].[tblInformacaoPrefeitoResponsavelTransporEscolar] CHECK CONSTRAINT [ReftblITipoResponsavel956]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPrefeito18]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoPublicoAlvo]'))
ALTER TABLE [dbo].[tblInformacaoPrefeitoPublicoAlvo]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPrefeito18] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPrefeito] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPrefeitoPublicoAlvo] CHECK CONSTRAINT [ReftblCabecalhoPrefeito18]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoPublicoAlvo1065]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoPublicoAlvo]'))
ALTER TABLE [dbo].[tblInformacaoPrefeitoPublicoAlvo]  WITH CHECK ADD  CONSTRAINT [ReftblTipoPublicoAlvo1065] FOREIGN KEY([IdTipoPublicoAlvo])
REFERENCES [dbo].[tblTipoPublicoAlvo] ([IdTipoPublicoAlvo])
GO
ALTER TABLE [dbo].[tblInformacaoPrefeitoPublicoAlvo] CHECK CONSTRAINT [ReftblTipoPublicoAlvo1065]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoPrefeito17]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoReage]'))
ALTER TABLE [dbo].[tblInformacaoPrefeitoReage]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoPrefeito17] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoPrefeito] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoPrefeitoReage] CHECK CONSTRAINT [ReftblCabecalhoPrefeito17]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoReage1565]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoPrefeitoReage]'))
ALTER TABLE [dbo].[tblInformacaoPrefeitoReage]  WITH CHECK ADD  CONSTRAINT [ReftblTipoReage1565] FOREIGN KEY([IdTipoReage])
REFERENCES [dbo].[tblTipoReage] ([IdTipoReage])
GO
ALTER TABLE [dbo].[tblInformacaoPrefeitoReage] CHECK CONSTRAINT [ReftblTipoReage1565]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoEmbarcacao94242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblDimensaoEmbarcacao]'))
ALTER TABLE [dbo].[tblDimensaoEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoEmbarcacao94242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoEmbarcacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblDimensaoEmbarcacao] CHECK CONSTRAINT [ReftblCabecalhoEmbarcacao94242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoEmbarcacao34242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoEmbarcacao]'))
ALTER TABLE [dbo].[tblIdentificacaoEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoEmbarcacao34242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoEmbarcacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoEmbarcacao] CHECK CONSTRAINT [ReftblCabecalhoEmbarcacao34242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoEmbarcacao8424]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblConservacaoEmbarcacao]'))
ALTER TABLE [dbo].[tblConservacaoEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoEmbarcacao8424] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoEmbarcacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblConservacaoEmbarcacao] CHECK CONSTRAINT [ReftblCabecalhoEmbarcacao8424]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoEmbarcacao44242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoEmbarcacao]'))
ALTER TABLE [dbo].[tblCaracterizacaoEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoEmbarcacao44242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoEmbarcacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoEmbarcacao] CHECK CONSTRAINT [ReftblCabecalhoEmbarcacao44242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoEmbarcacao104242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblTripulacao]'))
ALTER TABLE [dbo].[tblTripulacao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoEmbarcacao104242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoEmbarcacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblTripulacao] CHECK CONSTRAINT [ReftblCabecalhoEmbarcacao104242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoEmbarcacao74242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblImagensEmbarcacao]'))
ALTER TABLE [dbo].[tblImagensEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoEmbarcacao74242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoEmbarcacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblImagensEmbarcacao] CHECK CONSTRAINT [ReftblCabecalhoEmbarcacao74242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCaracterizacaoEmbarcacao54242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCombustivelEmbarcacao]'))
ALTER TABLE [dbo].[tblCombustivelEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblCaracterizacaoEmbarcacao54242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCaracterizacaoEmbarcacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCombustivelEmbarcacao] CHECK CONSTRAINT [ReftblCaracterizacaoEmbarcacao54242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoCombustivel6242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCombustivelEmbarcacao]'))
ALTER TABLE [dbo].[tblCombustivelEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoCombustivel6242] FOREIGN KEY([IdTipoCombustivel])
REFERENCES [dbo].[tblTipoCombustivel] ([IdTipoCombustivel])
GO
ALTER TABLE [dbo].[tblCombustivelEmbarcacao] CHECK CONSTRAINT [ReftblTipoCombustivel6242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblIdentificacaoEmbarcacao114242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPropriedadeEmbarcacao]'))
ALTER TABLE [dbo].[tblPropriedadeEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblIdentificacaoEmbarcacao114242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblIdentificacaoEmbarcacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPropriedadeEmbarcacao] CHECK CONSTRAINT [ReftblIdentificacaoEmbarcacao114242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoPropriedade124242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPropriedadeEmbarcacao]'))
ALTER TABLE [dbo].[tblPropriedadeEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblTipoPropriedade124242] FOREIGN KEY([IdTipoPropriedade])
REFERENCES [dbo].[tblTipoPropriedade] ([IdTipoPropriedade])
GO
ALTER TABLE [dbo].[tblPropriedadeEmbarcacao] CHECK CONSTRAINT [ReftblTipoPropriedade124242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCaracterizacaoFamiliaAluno8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAlunoAuxilio]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoAuxilio]  WITH CHECK ADD  CONSTRAINT [ReftblCaracterizacaoFamiliaAluno8] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCaracterizacaoFamiliaAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoAuxilio] CHECK CONSTRAINT [ReftblCaracterizacaoFamiliaAluno8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAuxilio935]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAlunoAuxilio]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoAuxilio]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAuxilio935] FOREIGN KEY([IdTipoAuxilio])
REFERENCES [dbo].[tblTipoAuxilio] ([IdTipoAuxilio])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoAuxilio] CHECK CONSTRAINT [ReftblTipoAuxilio935]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCaracterizacaoFamiliaAluno6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAlunoTrabalho]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoTrabalho]  WITH CHECK ADD  CONSTRAINT [ReftblCaracterizacaoFamiliaAluno6] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCaracterizacaoFamiliaAluno] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoTrabalho] CHECK CONSTRAINT [ReftblCaracterizacaoFamiliaAluno6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoTrabalho735]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoFamiliaAlunoTrabalho]'))
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoTrabalho]  WITH CHECK ADD  CONSTRAINT [ReftblTipoTrabalho735] FOREIGN KEY([IdTipoTrabalho])
REFERENCES [dbo].[tblTipoTrabalho] ([IdTipoTrabalho])
GO
ALTER TABLE [dbo].[tblCaracterizacaoFamiliaAlunoTrabalho] CHECK CONSTRAINT [ReftblTipoTrabalho735]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoSecretario6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioAcordo]'))
ALTER TABLE [dbo].[tblInformacaoSecretarioAcordo]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoSecretario6] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoSecretario] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoSecretarioAcordo] CHECK CONSTRAINT [ReftblCabecalhoSecretario6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAcordo569]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioAcordo]'))
ALTER TABLE [dbo].[tblInformacaoSecretarioAcordo]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAcordo569] FOREIGN KEY([IdTipoAcordo])
REFERENCES [dbo].[tblTipoAcordo] ([IdTipoAcordo])
GO
ALTER TABLE [dbo].[tblInformacaoSecretarioAcordo] CHECK CONSTRAINT [ReftblTipoAcordo569]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoSecretario8]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioReage]'))
ALTER TABLE [dbo].[tblInformacaoSecretarioReage]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoSecretario8] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoSecretario] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoSecretarioReage] CHECK CONSTRAINT [ReftblCabecalhoSecretario8]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoReage769]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioReage]'))
ALTER TABLE [dbo].[tblInformacaoSecretarioReage]  WITH CHECK ADD  CONSTRAINT [ReftblTipoReage769] FOREIGN KEY([IdTipoReage])
REFERENCES [dbo].[tblTipoReage] ([IdTipoReage])
GO
ALTER TABLE [dbo].[tblInformacaoSecretarioReage] CHECK CONSTRAINT [ReftblTipoReage769]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoAssento204242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMaterialAssento]'))
ALTER TABLE [dbo].[tblMaterialAssento]  WITH CHECK ADD  CONSTRAINT [ReftblTipoAssento204242] FOREIGN KEY([IdTipoAssento])
REFERENCES [dbo].[tblTipoAssento] ([IdTipoAssento])
GO
ALTER TABLE [dbo].[tblMaterialAssento] CHECK CONSTRAINT [ReftblTipoAssento204242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTripulacao164242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMaterialAssento]'))
ALTER TABLE [dbo].[tblMaterialAssento]  WITH CHECK ADD  CONSTRAINT [ReftblTripulacao164242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblTripulacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblMaterialAssento] CHECK CONSTRAINT [ReftblTripulacao164242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoCasco214242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMaterialCasco]'))
ALTER TABLE [dbo].[tblMaterialCasco]  WITH CHECK ADD  CONSTRAINT [ReftblTipoCasco214242] FOREIGN KEY([IdTipoCasco])
REFERENCES [dbo].[tblTipoCasco] ([IdTipoCasco])
GO
ALTER TABLE [dbo].[tblMaterialCasco] CHECK CONSTRAINT [ReftblTipoCasco214242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTripulacao184242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMaterialCasco]'))
ALTER TABLE [dbo].[tblMaterialCasco]  WITH CHECK ADD  CONSTRAINT [ReftblTripulacao184242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblTripulacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblMaterialCasco] CHECK CONSTRAINT [ReftblTripulacao184242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoSinalizacaoNoturna144242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblSinalizacaoNoturna]'))
ALTER TABLE [dbo].[tblSinalizacaoNoturna]  WITH CHECK ADD  CONSTRAINT [ReftblTipoSinalizacaoNoturna144242] FOREIGN KEY([IdTipoSinalizacao])
REFERENCES [dbo].[tblTipoSinalizacaoNoturna] ([IdTipoSinalizacao])
GO
ALTER TABLE [dbo].[tblSinalizacaoNoturna] CHECK CONSTRAINT [ReftblTipoSinalizacaoNoturna144242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTripulacao134242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblSinalizacaoNoturna]'))
ALTER TABLE [dbo].[tblSinalizacaoNoturna]  WITH CHECK ADD  CONSTRAINT [ReftblTripulacao134242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblTripulacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblSinalizacaoNoturna] CHECK CONSTRAINT [ReftblTripulacao134242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoTeto194242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMaterialTeto]'))
ALTER TABLE [dbo].[tblMaterialTeto]  WITH CHECK ADD  CONSTRAINT [ReftblTipoTeto194242] FOREIGN KEY([IdTipoTeto])
REFERENCES [dbo].[tblTipoTeto] ([IdTipoTeto])
GO
ALTER TABLE [dbo].[tblMaterialTeto] CHECK CONSTRAINT [ReftblTipoTeto194242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTripulacao154242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblMaterialTeto]'))
ALTER TABLE [dbo].[tblMaterialTeto]  WITH CHECK ADD  CONSTRAINT [ReftblTripulacao154242] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblTripulacao] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblMaterialTeto] CHECK CONSTRAINT [ReftblTripulacao154242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoSecretario2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoSecretario]'))
ALTER TABLE [dbo].[tblIdentificacaoSecretario]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoSecretario2] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoSecretario] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblIdentificacaoSecretario] CHECK CONSTRAINT [ReftblCabecalhoSecretario2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoEscolaridade369]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblIdentificacaoSecretario]'))
ALTER TABLE [dbo].[tblIdentificacaoSecretario]  WITH CHECK ADD  CONSTRAINT [ReftblTipoEscolaridade369] FOREIGN KEY([IdTipoEscolaridade])
REFERENCES [dbo].[tblTipoEscolaridade] ([IdTipoEscolaridade])
GO
ALTER TABLE [dbo].[tblIdentificacaoSecretario] CHECK CONSTRAINT [ReftblTipoEscolaridade369]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoSecretario4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCaracterizacaoSecretario]'))
ALTER TABLE [dbo].[tblCaracterizacaoSecretario]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoSecretario4] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoSecretario] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblCaracterizacaoSecretario] CHECK CONSTRAINT [ReftblCabecalhoSecretario4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoSecretario11]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioCriterio]'))
ALTER TABLE [dbo].[tblInformacaoSecretarioCriterio]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoSecretario11] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoSecretario] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblInformacaoSecretarioCriterio] CHECK CONSTRAINT [ReftblCabecalhoSecretario11]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoCriterio1269]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblInformacaoSecretarioCriterio]'))
ALTER TABLE [dbo].[tblInformacaoSecretarioCriterio]  WITH CHECK ADD  CONSTRAINT [ReftblTipoCriterio1269] FOREIGN KEY([IdTipoCriterio])
REFERENCES [dbo].[tblTipoCriterio] ([IdTipoCriterio])
GO
ALTER TABLE [dbo].[tblInformacaoSecretarioCriterio] CHECK CONSTRAINT [ReftblTipoCriterio1269]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoSecretario18]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoSecretarioMotivoBarqueiroTerceirizado]'))
ALTER TABLE [dbo].[tblPercepcaoSecretarioMotivoBarqueiroTerceirizado]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoSecretario18] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoSecretario] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoSecretarioMotivoBarqueiroTerceirizado] CHECK CONSTRAINT [ReftblCabecalhoSecretario18]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoMotivoBarqueiroTerceirizado1769]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoSecretarioMotivoBarqueiroTerceirizado]'))
ALTER TABLE [dbo].[tblPercepcaoSecretarioMotivoBarqueiroTerceirizado]  WITH CHECK ADD  CONSTRAINT [ReftblTipoMotivoBarqueiroTerceirizado1769] FOREIGN KEY([IdTipoMotivoBarqueiroTerceirizado])
REFERENCES [dbo].[tblTipoMotivoBarqueiroTerceirizado] ([IdTipoMotivoBarqueiroTerceirizado])
GO
ALTER TABLE [dbo].[tblPercepcaoSecretarioMotivoBarqueiroTerceirizado] CHECK CONSTRAINT [ReftblTipoMotivoBarqueiroTerceirizado1769]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoSecretario13]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoSecretarioDificuldade]'))
ALTER TABLE [dbo].[tblPercepcaoSecretarioDificuldade]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoSecretario13] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoSecretario] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPercepcaoSecretarioDificuldade] CHECK CONSTRAINT [ReftblCabecalhoSecretario13]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblTipoDificuldade1669]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPercepcaoSecretarioDificuldade]'))
ALTER TABLE [dbo].[tblPercepcaoSecretarioDificuldade]  WITH CHECK ADD  CONSTRAINT [ReftblTipoDificuldade1669] FOREIGN KEY([IdTipoDificuldade])
REFERENCES [dbo].[tblTipoDificuldade] ([IdTipoDificuldade])
GO
ALTER TABLE [dbo].[tblPercepcaoSecretarioDificuldade] CHECK CONSTRAINT [ReftblTipoDificuldade1669]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio22]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEscola]'))
ALTER TABLE [dbo].[tblEscola]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio22] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblEscola] CHECK CONSTRAINT [ReftblMunicipio22]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio22456]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEscola]'))
ALTER TABLE [dbo].[tblEscola]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio22456] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblEscola] CHECK CONSTRAINT [ReftblMunicipio22456]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio22657]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblEscola]'))
ALTER TABLE [dbo].[tblEscola]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio22657] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblEscola] CHECK CONSTRAINT [ReftblMunicipio22657]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio1]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoMunicipio]'))
ALTER TABLE [dbo].[tblCabecalhoMunicipio]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio1] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoMunicipio] CHECK CONSTRAINT [ReftblMunicipio1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio3656]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoPrefeito]'))
ALTER TABLE [dbo].[tblCabecalhoPrefeito]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio3656] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoPrefeito] CHECK CONSTRAINT [ReftblMunicipio3656]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio284242]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoEmbarcacao]'))
ALTER TABLE [dbo].[tblCabecalhoEmbarcacao]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio284242] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoEmbarcacao] CHECK CONSTRAINT [ReftblMunicipio284242]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio169]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoSecretario]'))
ALTER TABLE [dbo].[tblCabecalhoSecretario]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio169] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoSecretario] CHECK CONSTRAINT [ReftblMunicipio169]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio437]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoPais]'))
ALTER TABLE [dbo].[tblCabecalhoPais]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio437] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoPais] CHECK CONSTRAINT [ReftblMunicipio437]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio45]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoCondutor]'))
ALTER TABLE [dbo].[tblCabecalhoCondutor]  WITH NOCHECK ADD  CONSTRAINT [ReftblMunicipio45] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoCondutor] CHECK CONSTRAINT [ReftblMunicipio45]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEscola2935]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoAluno]'))
ALTER TABLE [dbo].[tblCabecalhoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblEscola2935] FOREIGN KEY([IdINEP])
REFERENCES [dbo].[tblEscola] ([IdINEP])
GO
ALTER TABLE [dbo].[tblCabecalhoAluno] CHECK CONSTRAINT [ReftblEscola2935]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio135]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoAluno]'))
ALTER TABLE [dbo].[tblCabecalhoAluno]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio135] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoAluno] CHECK CONSTRAINT [ReftblMunicipio135]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEscola2456]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoProfessor]'))
ALTER TABLE [dbo].[tblCabecalhoProfessor]  WITH CHECK ADD  CONSTRAINT [ReftblEscola2456] FOREIGN KEY([IdINEP])
REFERENCES [dbo].[tblEscola] ([IdINEP])
GO
ALTER TABLE [dbo].[tblCabecalhoProfessor] CHECK CONSTRAINT [ReftblEscola2456]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio32342]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoProfessor]'))
ALTER TABLE [dbo].[tblCabecalhoProfessor]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio32342] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoProfessor] CHECK CONSTRAINT [ReftblMunicipio32342]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio145]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoDesempenho]'))
ALTER TABLE [dbo].[tblCabecalhoDesempenho]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio145] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoDesempenho] CHECK CONSTRAINT [ReftblMunicipio145]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblEscola2324]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoDiretor]'))
ALTER TABLE [dbo].[tblCabecalhoDiretor]  WITH CHECK ADD  CONSTRAINT [ReftblEscola2324] FOREIGN KEY([IdINEP])
REFERENCES [dbo].[tblEscola] ([IdINEP])
GO
ALTER TABLE [dbo].[tblCabecalhoDiretor] CHECK CONSTRAINT [ReftblEscola2324]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblMunicipio146]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblCabecalhoDiretor]'))
ALTER TABLE [dbo].[tblCabecalhoDiretor]  WITH CHECK ADD  CONSTRAINT [ReftblMunicipio146] FOREIGN KEY([IdMunicipio])
REFERENCES [dbo].[tblMunicipio] ([IdMunicipio])
GO
ALTER TABLE [dbo].[tblCabecalhoDiretor] CHECK CONSTRAINT [ReftblMunicipio146]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoMunicipio5]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblOutrosItensMunicipio]'))
ALTER TABLE [dbo].[tblOutrosItensMunicipio]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoMunicipio5] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoMunicipio] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblOutrosItensMunicipio] CHECK CONSTRAINT [ReftblCabecalhoMunicipio5]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoMunicipio2]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblItensMunicipio]'))
ALTER TABLE [dbo].[tblItensMunicipio]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoMunicipio2] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoMunicipio] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblItensMunicipio] CHECK CONSTRAINT [ReftblCabecalhoMunicipio2]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoMunicipio6]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPostoAbastecimento2]'))
ALTER TABLE [dbo].[tblPostoAbastecimento2]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoMunicipio6] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoMunicipio] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPostoAbastecimento2] CHECK CONSTRAINT [ReftblCabecalhoMunicipio6]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoMunicipio7]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPostoAbastecimento3]'))
ALTER TABLE [dbo].[tblPostoAbastecimento3]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoMunicipio7] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoMunicipio] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPostoAbastecimento3] CHECK CONSTRAINT [ReftblCabecalhoMunicipio7]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoMunicipio4]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblPostoAbastecimento1]'))
ALTER TABLE [dbo].[tblPostoAbastecimento1]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoMunicipio4] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoMunicipio] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblPostoAbastecimento1] CHECK CONSTRAINT [ReftblCabecalhoMunicipio4]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[ReftblCabecalhoMunicipio3]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblServiçosEmergenciaisMunicipio]'))
ALTER TABLE [dbo].[tblServiçosEmergenciaisMunicipio]  WITH CHECK ADD  CONSTRAINT [ReftblCabecalhoMunicipio3] FOREIGN KEY([IdFormulario])
REFERENCES [dbo].[tblCabecalhoMunicipio] ([IdFormulario])
GO
ALTER TABLE [dbo].[tblServiçosEmergenciaisMunicipio] CHECK CONSTRAINT [ReftblCabecalhoMunicipio3]
