USE [master]
GO
/****** Object:  Database [Cricket]    Script Date: 11/24/2020 2:13:13 PM ******/
CREATE DATABASE [Cricket]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cricket', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.AVINASH\MSSQL\DATA\Cricket.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cricket_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.AVINASH\MSSQL\DATA\Cricket_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cricket] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cricket].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cricket] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cricket] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cricket] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cricket] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cricket] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cricket] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Cricket] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Cricket] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cricket] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cricket] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cricket] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cricket] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cricket] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cricket] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cricket] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cricket] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Cricket] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cricket] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cricket] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cricket] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cricket] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cricket] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cricket] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cricket] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cricket] SET  MULTI_USER 
GO
ALTER DATABASE [Cricket] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cricket] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cricket] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cricket] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Cricket]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 11/24/2020 2:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Match](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Match_Name] [varchar](50) NULL,
	[Match_Date] [varchar](50) NULL,
	[Team_One] [int] NULL,
	[Team_Two] [int] NULL,
	[Start_Time] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Player_Match_Mapping]    Script Date: 11/24/2020 2:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Player_Match_Mapping](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MatchId] [int] NULL,
	[TeamId] [int] NULL,
	[PlayerId] [int] NULL,
	[PlayerTypeId] [int] NULL,
	[Position] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Players]    Script Date: 11/24/2020 2:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Players](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PlayerType]    Script Date: 11/24/2020 2:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PlayerType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Player_Type_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Team]    Script Date: 11/24/2020 2:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Team_Name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Match] ON 

INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (3, N'T20', N'10/10/2020', 1, 2, N'10AM', N'Pune')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (4, N'ODI', N'05/09/2020', 1, 2, N'08:30 AM', N'Pune')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (5, N'ODI', N'05/09/2020', NULL, 3, N'08:30 AM', N'Pune')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (6, N'ODI', N'05/09/2020', NULL, 2, N'08:30 AM', N'2')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (7, N'ODI', N'05/09/2020', NULL, 3, N'08:30 AM', N'Pune')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (8, N'ODI', N'05/09/2020', NULL, 2, N'08:30 AM', N'Pune')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (9, N'ODI', N'05/09/2020', NULL, 2, N'08:30 AM', N'Pune')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (10, N'odi', N'asdsa', NULL, 2, N'sda', N'pine')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (11, N'ODI', N'/02/2020', 3, 4, N'5', N'Parli')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (12, N'ODC', N'01/03/2021', 1, 2, N'4', N'Ahmedpur')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (13, N'ODC', N'01/0202021', 4, 1, N'235', N'Latur')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (14, N'T 20', N'01/01/2020', 1, 2, N'20', N'Mumbai')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (15, N'T20', N'01/01/2020', 2, 3, N'20', N'ppur')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (16, N'ODI', N'01/01/2020', 1, 2, N'20', N'Punnne')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (17, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (18, N'ODI', N'05/09/2020', 4, 4, N'08:30 AM', N'Pune')
INSERT [dbo].[Match] ([Id], [Match_Name], [Match_Date], [Team_One], [Team_Two], [Start_Time], [Address]) VALUES (19, N'ODI', N'05/09/2020', 1, 2, N'08:30 AM', N'Pune')
SET IDENTITY_INSERT [dbo].[Match] OFF
SET IDENTITY_INSERT [dbo].[Players] ON 

INSERT [dbo].[Players] ([Id], [Name]) VALUES (1, N'Sachin Tendulkar')
INSERT [dbo].[Players] ([Id], [Name]) VALUES (2, N'M S Dhoni')
INSERT [dbo].[Players] ([Id], [Name]) VALUES (3, N'Virat Kohli')
INSERT [dbo].[Players] ([Id], [Name]) VALUES (4, N'Rohit Sharma')
SET IDENTITY_INSERT [dbo].[Players] OFF
SET IDENTITY_INSERT [dbo].[PlayerType] ON 

INSERT [dbo].[PlayerType] ([Id], [Player_Type_Name]) VALUES (1, N'Batsman')
INSERT [dbo].[PlayerType] ([Id], [Player_Type_Name]) VALUES (2, N'Bowler')
INSERT [dbo].[PlayerType] ([Id], [Player_Type_Name]) VALUES (3, N'Wicket-keeper')
INSERT [dbo].[PlayerType] ([Id], [Player_Type_Name]) VALUES (4, N'All Rounder')
INSERT [dbo].[PlayerType] ([Id], [Player_Type_Name]) VALUES (5, N'Captain')
SET IDENTITY_INSERT [dbo].[PlayerType] OFF
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([Id], [Team_Name]) VALUES (1, N'India')
INSERT [dbo].[Team] ([Id], [Team_Name]) VALUES (2, N'Australia')
INSERT [dbo].[Team] ([Id], [Team_Name]) VALUES (3, N'England')
INSERT [dbo].[Team] ([Id], [Team_Name]) VALUES (4, N'South Africa')
SET IDENTITY_INSERT [dbo].[Team] OFF
ALTER TABLE [dbo].[Match]  WITH CHECK ADD FOREIGN KEY([Team_One])
REFERENCES [dbo].[Team] ([Id])
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD FOREIGN KEY([Team_Two])
REFERENCES [dbo].[Team] ([Id])
GO
ALTER TABLE [dbo].[Player_Match_Mapping]  WITH CHECK ADD FOREIGN KEY([MatchId])
REFERENCES [dbo].[Match] ([Id])
GO
ALTER TABLE [dbo].[Player_Match_Mapping]  WITH CHECK ADD FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Players] ([Id])
GO
ALTER TABLE [dbo].[Player_Match_Mapping]  WITH CHECK ADD FOREIGN KEY([PlayerTypeId])
REFERENCES [dbo].[PlayerType] ([Id])
GO
ALTER TABLE [dbo].[Player_Match_Mapping]  WITH CHECK ADD FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([Id])
GO
USE [master]
GO
ALTER DATABASE [Cricket] SET  READ_WRITE 
GO
