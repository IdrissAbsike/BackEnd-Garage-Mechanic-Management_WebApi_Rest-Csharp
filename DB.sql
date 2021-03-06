USE [master]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 24/12/2020 10:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[cin] [varchar](50) NULL,
	[telephone] [int] NULL,
	[adresse] [varchar](50) NULL,
	[cp] [int] NULL,
	[ville] [varchar](50) NULL,
	[vehicule] [varchar](50) NULL,
	[date_create] [datetime] NULL,
	[info_client] [varchar](255) NULL,
 CONSTRAINT [PK_gestion_client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domaine]    Script Date: 24/12/2020 10:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domaine](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[domaine] [varchar](50) NULL,
 CONSTRAINT [PK_Domaine] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fiche_technique]    Script Date: 24/12/2020 10:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fiche_technique](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom_mecanicien] [varchar](100) NULL,
	[probleme_client] [varchar](200) NULL,
	[service] [varchar](50) NULL,
	[date_creation] [datetime] NULL,
	[duree_service_jrs] [int] NULL,
	[montant_payer] [int] NULL,
	[info_client] [varchar](100) NULL,
 CONSTRAINT [PK_Fiche_technique] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mecanicien]    Script Date: 24/12/2020 10:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mecanicien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](50) NULL,
	[prenom] [varchar](50) NULL,
	[cin] [varchar](50) NULL,
	[telephone] [int] NULL,
	[domaine] [varchar](50) NULL,
	[niveau] [varchar](50) NULL,
 CONSTRAINT [PK_gestion_mecanicien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Niveau]    Script Date: 24/12/2020 10:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Niveau](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[niveau] [varchar](50) NULL,
 CONSTRAINT [PK_Niveau] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 24/12/2020 10:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[service] [varchar](max) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ville]    Script Date: 24/12/2020 10:33:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ville](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[city] [varchar](50) NULL,
 CONSTRAINT [PK_Ville] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF_gestion_client_date_create]  DEFAULT (getdate()) FOR [date_create]
GO
ALTER TABLE [dbo].[Fiche_technique] ADD  CONSTRAINT [DF_Fiche_technique_date_creation]  DEFAULT (getdate()) FOR [date_creation]
GO
