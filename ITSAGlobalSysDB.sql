USE [ITSAGlobalSysDB]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ActivityDefinitions]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActivityDefinitions](
	[activityDefinitionId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ActivityDefinitions] PRIMARY KEY CLUSTERED 
(
	[activityDefinitionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[locationId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[locNumber] [nvarchar](50) NULL,
	[source] [nvarchar](50) NULL,
	[description] [ntext] NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Locations] PRIMARY KEY CLUSTERED 
(
	[locationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MediumPrepTypes]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MediumPrepTypes](
	[typeId] [int] IDENTITY(1,1) NOT NULL,
	[typename] [nvarchar](max) NOT NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.MediumPrepTypes] PRIMARY KEY CLUSTERED 
(
	[typeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Species]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Species](
	[specieId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Species] PRIMARY KEY CLUSTERED 
(
	[specieId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VarietyDefinitions]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VarietyDefinitions](
	[varietyDefinitionId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.VarietyDefinitions] PRIMARY KEY CLUSTERED 
(
	[varietyDefinitionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Measurements]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Measurements](
	[measurementId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[uom] [nvarchar](max) NOT NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Measurements] PRIMARY KEY CLUSTERED 
(
	[measurementId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[partnerId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[contactAddress] [nvarchar](255) NOT NULL,
	[phoneNumber] [nvarchar](max) NULL,
	[emailAddress] [nvarchar](max) NOT NULL,
	[webAddress] [nvarchar](max) NULL,
	[geoLongitude] [nvarchar](max) NULL,
	[geoLatitude] [nvarchar](max) NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
	[contactCity] [nvarchar](255) NOT NULL,
	[contactState] [nvarchar](255) NOT NULL,
	[contactCountry] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_dbo.Partners] PRIMARY KEY CLUSTERED 
(
	[partnerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stocks]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stocks](
	[stockId] [int] IDENTITY(1,1) NOT NULL,
	[reagentId] [int] NOT NULL,
	[totalIn] [int] NOT NULL,
	[totalOut] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerContacts]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerContacts](
	[contactId] [int] IDENTITY(1,1) NOT NULL,
	[partnerId] [int] NOT NULL,
	[firstName] [nvarchar](max) NOT NULL,
	[otherNames] [nvarchar](max) NULL,
	[lastName] [nvarchar](max) NOT NULL,
	[phoneNumber] [nvarchar](max) NULL,
	[emailAddress] [nvarchar](max) NULL,
	[contactAddress] [nvarchar](max) NULL,
	[webAddress] [nvarchar](max) NULL,
	[geoLongitude] [decimal](18, 2) NULL,
	[geoLatitude] [decimal](18, 2) NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
	[personTitle] [nvarchar](max) NULL,
	[contactCity] [nvarchar](255) NOT NULL,
	[contactState] [nvarchar](255) NOT NULL,
	[contactCountry] [nvarchar](255) NOT NULL,
	[gender] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.PartnerContacts] PRIMARY KEY CLUSTERED 
(
	[contactId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.Groups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reagents]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reagents](
	[reagentId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[measurementId] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
	[reOrderLevel] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Reagents] PRIMARY KEY CLUSTERED 
(
	[reagentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_measurementId] ON [dbo].[Reagents] 
(
	[measurementId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventories]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventories](
	[inventoryId] [int] IDENTITY(1,1) NOT NULL,
	[reagentId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[stockDate] [datetime] NULL,
	[userId] [nvarchar](128) NULL,
	[note] [nvarchar](max) NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Inventories] PRIMARY KEY CLUSTERED 
(
	[inventoryId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_reagentId] ON [dbo].[Inventories] 
(
	[reagentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_userId] ON [dbo].[Inventories] 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerActivities]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerActivities](
	[partnerActivityId] [int] IDENTITY(1,1) NOT NULL,
	[partnerId] [int] NOT NULL,
	[reagentId] [int] NULL,
	[backStopping] [nvarchar](max) NULL,
	[tcPlantletsGiven] [int] NULL,
	[bioreactorplantsGiven] [int] NULL,
	[tubersGiven] [int] NULL,
	[tcPlantletsAvailable] [int] NULL,
	[tibPlantletsAvailable] [int] NULL,
	[tubersAvailable] [int] NULL,
	[activityDate] [datetime] NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
	[userId] [nvarchar](128) NULL,
	[reagentQty] [int] NULL,
 CONSTRAINT [PK_dbo.PartnerActivities] PRIMARY KEY CLUSTERED 
(
	[partnerActivityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_partnerId] ON [dbo].[PartnerActivities] 
(
	[partnerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_reagentId] ON [dbo].[PartnerActivities] 
(
	[reagentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_userId] ON [dbo].[PartnerActivities] 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Varieties]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Varieties](
	[varietyId] [int] IDENTITY(1,1) NOT NULL,
	[varietyDefinitionId] [int] NOT NULL,
	[sampleNumber] [nvarchar](max) NOT NULL,
	[testDate] [datetime] NULL,
	[releaseStatus] [nvarchar](max) NULL,
	[resistance] [nvarchar](max) NULL,
	[storability] [nvarchar](max) NULL,
	[poundability] [nvarchar](max) NULL,
	[uniformity] [nvarchar](max) NULL,
	[stability] [nvarchar](max) NULL,
	[distinctness] [nvarchar](max) NULL,
	[value] [int] NULL,
	[locationId] [int] NULL,
	[userId] [nvarchar](128) NULL,
	[specieId] [int] NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Varieties] PRIMARY KEY CLUSTERED 
(
	[varietyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_locationId] ON [dbo].[Varieties] 
(
	[locationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_specieId] ON [dbo].[Varieties] 
(
	[specieId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_userId] ON [dbo].[Varieties] 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_varietyDefinitionId] ON [dbo].[Varieties] 
(
	[varietyDefinitionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VarietyProcessFlows]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VarietyProcessFlows](
	[processId] [int] IDENTITY(1,1) NOT NULL,
	[varietyId] [int] NOT NULL,
	[form] [nvarchar](max) NOT NULL,
	[processDate] [datetime] NULL,
	[rank] [nvarchar](max) NOT NULL,
	[barcode] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
	[userId] [nvarchar](128) NULL,
	[barcodeImageUrl] [varbinary](max) NULL,
 CONSTRAINT [PK_dbo.VarietyProcessFlows] PRIMARY KEY CLUSTERED 
(
	[processId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_userId] ON [dbo].[VarietyProcessFlows] 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_varietyId] ON [dbo].[VarietyProcessFlows] 
(
	[varietyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationUserGroups]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationUserGroups](
	[UserId] [nvarchar](128) NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ApplicationUserGroups] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_GroupId] ON [dbo].[ApplicationUserGroups] 
(
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[ApplicationUserGroups] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternalReagentUsages]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalReagentUsages](
	[usageId] [int] IDENTITY(1,1) NOT NULL,
	[reagentId] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[dispatchDate] [datetime] NULL,
	[userId] [nvarchar](128) NULL,
	[note] [nvarchar](max) NOT NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.InternalReagentUsages] PRIMARY KEY CLUSTERED 
(
	[usageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_reagentId] ON [dbo].[InternalReagentUsages] 
(
	[reagentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_userId] ON [dbo].[InternalReagentUsages] 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationUsers]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationUsers](
	[locationUserId] [int] IDENTITY(1,1) NOT NULL,
	[userId] [nvarchar](128) NULL,
	[locationId] [int] NOT NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[status] [int] NOT NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LocationUsers] PRIMARY KEY CLUSTERED 
(
	[locationUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_locationId] ON [dbo].[LocationUsers] 
(
	[locationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_userId] ON [dbo].[LocationUsers] 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Activities]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[activityId] [int] IDENTITY(1,1) NOT NULL,
	[activityDefinitionId] [int] NOT NULL,
	[locationId] [int] NOT NULL,
	[typeId] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[varietyId] [int] NULL,
	[userId] [nvarchar](128) NULL,
	[quantity] [int] NOT NULL,
	[quality] [int] NOT NULL,
	[activityDate] [datetime] NULL,
	[createdDate] [datetime] NULL,
	[updatedDate] [datetime] NULL,
	[Timestamp] [timestamp] NOT NULL,
	[createdBy] [nvarchar](max) NULL,
	[updatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Activities] PRIMARY KEY CLUSTERED 
(
	[activityId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_activityDefinitionId] ON [dbo].[Activities] 
(
	[activityDefinitionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_locationId] ON [dbo].[Activities] 
(
	[locationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_typeId] ON [dbo].[Activities] 
(
	[typeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_userId] ON [dbo].[Activities] 
(
	[userId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_varietyId] ON [dbo].[Activities] 
(
	[varietyId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[User_Id] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_User_Id] ON [dbo].[AspNetUserClaims] 
(
	[User_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationRoleGroups]    Script Date: 04/16/2015 08:42:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationRoleGroups](
	[RoleId] [nvarchar](128) NOT NULL,
	[GroupId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ApplicationRoleGroups] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_GroupId] ON [dbo].[ApplicationRoleGroups] 
(
	[GroupId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[ApplicationRoleGroups] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Default [DF__Partners__contac__59063A47]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Partners] ADD  DEFAULT ('') FOR [contactCity]
GO
/****** Object:  Default [DF__Partners__contac__59FA5E80]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Partners] ADD  DEFAULT ('') FOR [contactState]
GO
/****** Object:  Default [DF__Partners__contac__5AEE82B9]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Partners] ADD  DEFAULT ('') FOR [contactCountry]
GO
/****** Object:  Default [DF__PartnerCo__conta__5BE2A6F2]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[PartnerContacts] ADD  DEFAULT ('') FOR [contactCity]
GO
/****** Object:  Default [DF__PartnerCo__conta__5CD6CB2B]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[PartnerContacts] ADD  DEFAULT ('') FOR [contactState]
GO
/****** Object:  Default [DF__PartnerCo__conta__5DCAEF64]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[PartnerContacts] ADD  DEFAULT ('') FOR [contactCountry]
GO
/****** Object:  Default [DF__Reagents__reOrde__5EBF139D]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Reagents] ADD  DEFAULT ((0)) FOR [reOrderLevel]
GO
/****** Object:  Default [DF__PartnerAc__reage__5070F446]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[PartnerActivities] ADD  DEFAULT ((0)) FOR [reagentQty]
GO
/****** Object:  ForeignKey [FK_dbo.Reagents_dbo.Measurements_measurementId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Reagents]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Reagents_dbo.Measurements_measurementId] FOREIGN KEY([measurementId])
REFERENCES [dbo].[Measurements] ([measurementId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reagents] CHECK CONSTRAINT [FK_dbo.Reagents_dbo.Measurements_measurementId]
GO
/****** Object:  ForeignKey [FK_dbo.Inventories_dbo.AspNetUsers_userId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.AspNetUsers_userId]
GO
/****** Object:  ForeignKey [FK_dbo.Inventories_dbo.Reagents_reagentId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Inventories_dbo.Reagents_reagentId] FOREIGN KEY([reagentId])
REFERENCES [dbo].[Reagents] ([reagentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_dbo.Inventories_dbo.Reagents_reagentId]
GO
/****** Object:  ForeignKey [FK_dbo.PartnerActivities_dbo.AspNetUsers_userId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[PartnerActivities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PartnerActivities_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PartnerActivities] CHECK CONSTRAINT [FK_dbo.PartnerActivities_dbo.AspNetUsers_userId]
GO
/****** Object:  ForeignKey [FK_dbo.PartnerActivities_dbo.Partners_partnerId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[PartnerActivities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PartnerActivities_dbo.Partners_partnerId] FOREIGN KEY([partnerId])
REFERENCES [dbo].[Partners] ([partnerId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PartnerActivities] CHECK CONSTRAINT [FK_dbo.PartnerActivities_dbo.Partners_partnerId]
GO
/****** Object:  ForeignKey [FK_dbo.PartnerActivities_dbo.Reagents_reagentId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[PartnerActivities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PartnerActivities_dbo.Reagents_reagentId] FOREIGN KEY([reagentId])
REFERENCES [dbo].[Reagents] ([reagentId])
GO
ALTER TABLE [dbo].[PartnerActivities] CHECK CONSTRAINT [FK_dbo.PartnerActivities_dbo.Reagents_reagentId]
GO
/****** Object:  ForeignKey [FK_dbo.Varieties_dbo.AspNetUsers_userId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Varieties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Varieties_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Varieties] CHECK CONSTRAINT [FK_dbo.Varieties_dbo.AspNetUsers_userId]
GO
/****** Object:  ForeignKey [FK_dbo.Varieties_dbo.Locations_locationId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Varieties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Varieties_dbo.Locations_locationId] FOREIGN KEY([locationId])
REFERENCES [dbo].[Locations] ([locationId])
GO
ALTER TABLE [dbo].[Varieties] CHECK CONSTRAINT [FK_dbo.Varieties_dbo.Locations_locationId]
GO
/****** Object:  ForeignKey [FK_dbo.Varieties_dbo.Species_specieId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Varieties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Varieties_dbo.Species_specieId] FOREIGN KEY([specieId])
REFERENCES [dbo].[Species] ([specieId])
GO
ALTER TABLE [dbo].[Varieties] CHECK CONSTRAINT [FK_dbo.Varieties_dbo.Species_specieId]
GO
/****** Object:  ForeignKey [FK_dbo.Varieties_dbo.VarietyDefinitions_varietyDefinitionId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Varieties]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Varieties_dbo.VarietyDefinitions_varietyDefinitionId] FOREIGN KEY([varietyDefinitionId])
REFERENCES [dbo].[VarietyDefinitions] ([varietyDefinitionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Varieties] CHECK CONSTRAINT [FK_dbo.Varieties_dbo.VarietyDefinitions_varietyDefinitionId]
GO
/****** Object:  ForeignKey [FK_dbo.VarietyProcessFlows_dbo.AspNetUsers_userId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[VarietyProcessFlows]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VarietyProcessFlows_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[VarietyProcessFlows] CHECK CONSTRAINT [FK_dbo.VarietyProcessFlows_dbo.AspNetUsers_userId]
GO
/****** Object:  ForeignKey [FK_dbo.VarietyProcessFlows_dbo.Varieties_varietyId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[VarietyProcessFlows]  WITH CHECK ADD  CONSTRAINT [FK_dbo.VarietyProcessFlows_dbo.Varieties_varietyId] FOREIGN KEY([varietyId])
REFERENCES [dbo].[Varieties] ([varietyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VarietyProcessFlows] CHECK CONSTRAINT [FK_dbo.VarietyProcessFlows_dbo.Varieties_varietyId]
GO
/****** Object:  ForeignKey [FK_dbo.ApplicationUserGroups_dbo.AspNetUsers_UserId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[ApplicationUserGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserGroups_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationUserGroups] CHECK CONSTRAINT [FK_dbo.ApplicationUserGroups_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.ApplicationUserGroups_dbo.Groups_GroupId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[ApplicationUserGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationUserGroups_dbo.Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationUserGroups] CHECK CONSTRAINT [FK_dbo.ApplicationUserGroups_dbo.Groups_GroupId]
GO
/****** Object:  ForeignKey [FK_dbo.InternalReagentUsages_dbo.AspNetUsers_userId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[InternalReagentUsages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternalReagentUsages_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[InternalReagentUsages] CHECK CONSTRAINT [FK_dbo.InternalReagentUsages_dbo.AspNetUsers_userId]
GO
/****** Object:  ForeignKey [FK_dbo.InternalReagentUsages_dbo.Reagents_reagentId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[InternalReagentUsages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InternalReagentUsages_dbo.Reagents_reagentId] FOREIGN KEY([reagentId])
REFERENCES [dbo].[Reagents] ([reagentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InternalReagentUsages] CHECK CONSTRAINT [FK_dbo.InternalReagentUsages_dbo.Reagents_reagentId]
GO
/****** Object:  ForeignKey [FK_dbo.LocationUsers_dbo.AspNetUsers_userId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[LocationUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LocationUsers_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[LocationUsers] CHECK CONSTRAINT [FK_dbo.LocationUsers_dbo.AspNetUsers_userId]
GO
/****** Object:  ForeignKey [FK_dbo.LocationUsers_dbo.Locations_locationId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[LocationUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LocationUsers_dbo.Locations_locationId] FOREIGN KEY([locationId])
REFERENCES [dbo].[Locations] ([locationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LocationUsers] CHECK CONSTRAINT [FK_dbo.LocationUsers_dbo.Locations_locationId]
GO
/****** Object:  ForeignKey [FK_dbo.Activities_dbo.ActivityDefinitions_activityDefinitionId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Activities_dbo.ActivityDefinitions_activityDefinitionId] FOREIGN KEY([activityDefinitionId])
REFERENCES [dbo].[ActivityDefinitions] ([activityDefinitionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_dbo.Activities_dbo.ActivityDefinitions_activityDefinitionId]
GO
/****** Object:  ForeignKey [FK_dbo.Activities_dbo.AspNetUsers_userId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Activities_dbo.AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_dbo.Activities_dbo.AspNetUsers_userId]
GO
/****** Object:  ForeignKey [FK_dbo.Activities_dbo.Locations_locationId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Activities_dbo.Locations_locationId] FOREIGN KEY([locationId])
REFERENCES [dbo].[Locations] ([locationId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_dbo.Activities_dbo.Locations_locationId]
GO
/****** Object:  ForeignKey [FK_dbo.Activities_dbo.MediumPrepTypes_typeId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Activities_dbo.MediumPrepTypes_typeId] FOREIGN KEY([typeId])
REFERENCES [dbo].[MediumPrepTypes] ([typeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_dbo.Activities_dbo.MediumPrepTypes_typeId]
GO
/****** Object:  ForeignKey [FK_dbo.Activities_dbo.Varieties_varietyId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Activities_dbo.Varieties_varietyId] FOREIGN KEY([varietyId])
REFERENCES [dbo].[Varieties] ([varietyId])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_dbo.Activities_dbo.Varieties_varietyId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id] FOREIGN KEY([User_Id])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_User_Id]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_dbo.ApplicationRoleGroups_dbo.AspNetRoles_RoleId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[ApplicationRoleGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoleGroups_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationRoleGroups] CHECK CONSTRAINT [FK_dbo.ApplicationRoleGroups_dbo.AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_dbo.ApplicationRoleGroups_dbo.Groups_GroupId]    Script Date: 04/16/2015 08:42:53 ******/
ALTER TABLE [dbo].[ApplicationRoleGroups]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ApplicationRoleGroups_dbo.Groups_GroupId] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Groups] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ApplicationRoleGroups] CHECK CONSTRAINT [FK_dbo.ApplicationRoleGroups_dbo.Groups_GroupId]
GO
