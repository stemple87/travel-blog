USE [TravelBlog]
GO
/****** Object:  Table [dbo].[Experiences]    Script Date: 4/20/2016 4:09:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Experiences](
	[ExperienceId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[LocationId] [int] NOT NULL,
 CONSTRAINT [PK_Experiences] PRIMARY KEY CLUSTERED 
(
	[ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 4/20/2016 4:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persons]    Script Date: 4/20/2016 4:09:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persons](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[ExperienceId] [int] NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Experiences] ON 

INSERT [dbo].[Experiences] ([ExperienceId], [Description], [LocationId]) VALUES (2, N'Fun Times', 1)
INSERT [dbo].[Experiences] ([ExperienceId], [Description], [LocationId]) VALUES (3, N'Funner Times', 2)
INSERT [dbo].[Experiences] ([ExperienceId], [Description], [LocationId]) VALUES (4, N'Experience Test', 2)
INSERT [dbo].[Experiences] ([ExperienceId], [Description], [LocationId]) VALUES (5, N'New Test', 2)
INSERT [dbo].[Experiences] ([ExperienceId], [Description], [LocationId]) VALUES (6, N'Exciting stuff', 5)
SET IDENTITY_INSERT [dbo].[Experiences] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [Name]) VALUES (1, N'New York')
INSERT [dbo].[Locations] ([LocationId], [Name]) VALUES (2, N'Australia')
INSERT [dbo].[Locations] ([LocationId], [Name]) VALUES (3, N'Russia')
INSERT [dbo].[Locations] ([LocationId], [Name]) VALUES (4, N'Beirut')
INSERT [dbo].[Locations] ([LocationId], [Name]) VALUES (5, N'Tunis')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([PersonId], [Name], [ExperienceId]) VALUES (1, N'Test1', 3)
INSERT [dbo].[Persons] ([PersonId], [Name], [ExperienceId]) VALUES (2, N'Test2', 2)
INSERT [dbo].[Persons] ([PersonId], [Name], [ExperienceId]) VALUES (3, N'Test3', 1)
INSERT [dbo].[Persons] ([PersonId], [Name], [ExperienceId]) VALUES (5, N'Test4', 1)
INSERT [dbo].[Persons] ([PersonId], [Name], [ExperienceId]) VALUES (6, N'Name', 3)
INSERT [dbo].[Persons] ([PersonId], [Name], [ExperienceId]) VALUES (7, N'Steve', 6)
SET IDENTITY_INSERT [dbo].[Persons] OFF
