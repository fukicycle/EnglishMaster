USE [master]
GO
/****** Object:  Database [EnglishMaster]    Script Date: 8/12/2022 9:47:28 AM ******/
CREATE DATABASE [EnglishMaster]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EnglishMaster', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EnglishMaster.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EnglishMaster_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\EnglishMaster_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EnglishMaster] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EnglishMaster].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EnglishMaster] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EnglishMaster] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EnglishMaster] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EnglishMaster] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EnglishMaster] SET ARITHABORT OFF 
GO
ALTER DATABASE [EnglishMaster] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EnglishMaster] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EnglishMaster] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EnglishMaster] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EnglishMaster] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EnglishMaster] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EnglishMaster] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EnglishMaster] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EnglishMaster] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EnglishMaster] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EnglishMaster] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EnglishMaster] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EnglishMaster] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EnglishMaster] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EnglishMaster] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EnglishMaster] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EnglishMaster] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EnglishMaster] SET RECOVERY FULL 
GO
ALTER DATABASE [EnglishMaster] SET  MULTI_USER 
GO
ALTER DATABASE [EnglishMaster] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EnglishMaster] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EnglishMaster] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EnglishMaster] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EnglishMaster] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'EnglishMaster', N'ON'
GO
ALTER DATABASE [EnglishMaster] SET QUERY_STORE = OFF
GO
USE [EnglishMaster]
GO
/****** Object:  Table [dbo].[ExamResultIncorrects]    Script Date: 8/12/2022 9:47:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamResultIncorrects](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ExamResultID] [bigint] NOT NULL,
	[VocabularyID] [bigint] NOT NULL,
 CONSTRAINT [PK_ExamResultIncorrects] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamResults]    Script Date: 8/12/2022 9:47:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamResults](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[Score] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_ExamResults] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Levels]    Script Date: 8/12/2022 9:47:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Levels](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Levels] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartOfSpeech]    Script Date: 8/12/2022 9:47:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartOfSpeech](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[InJapanese] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartOfSpeech] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PracticeResults]    Script Date: 8/12/2022 9:47:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PracticeResults](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[VocabularyID] [bigint] NOT NULL,
	[IsCorrect] [bit] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_PracticeResults] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/12/2022 9:47:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Users_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vocabularies]    Script Date: 8/12/2022 9:47:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vocabularies](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartOfSpeechID] [bigint] NOT NULL,
	[WordID] [bigint] NOT NULL,
	[Meaning] [nvarchar](100) NOT NULL,
	[LevelID] [bigint] NOT NULL,
 CONSTRAINT [PK_Vocabularies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Words]    Script Date: 8/12/2022 9:47:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Words](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Word] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Words] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Vocabularies]    Script Date: 8/12/2022 9:47:28 AM ******/
CREATE NONCLUSTERED INDEX [IX_Vocabularies] ON [dbo].[Vocabularies]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExamResultIncorrects]  WITH CHECK ADD  CONSTRAINT [FK_ExamResultIncorrects_ExamResults] FOREIGN KEY([ExamResultID])
REFERENCES [dbo].[ExamResults] ([ID])
GO
ALTER TABLE [dbo].[ExamResultIncorrects] CHECK CONSTRAINT [FK_ExamResultIncorrects_ExamResults]
GO
ALTER TABLE [dbo].[ExamResultIncorrects]  WITH CHECK ADD  CONSTRAINT [FK_ExamResultIncorrects_Vocabularies] FOREIGN KEY([VocabularyID])
REFERENCES [dbo].[Vocabularies] ([ID])
GO
ALTER TABLE [dbo].[ExamResultIncorrects] CHECK CONSTRAINT [FK_ExamResultIncorrects_Vocabularies]
GO
ALTER TABLE [dbo].[ExamResults]  WITH CHECK ADD  CONSTRAINT [FK_ExamResults_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[ExamResults] CHECK CONSTRAINT [FK_ExamResults_Users]
GO
ALTER TABLE [dbo].[PracticeResults]  WITH CHECK ADD  CONSTRAINT [FK_PracticeResults_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[PracticeResults] CHECK CONSTRAINT [FK_PracticeResults_Users]
GO
ALTER TABLE [dbo].[PracticeResults]  WITH CHECK ADD  CONSTRAINT [FK_PracticeResults_Vocabularies] FOREIGN KEY([VocabularyID])
REFERENCES [dbo].[Vocabularies] ([ID])
GO
ALTER TABLE [dbo].[PracticeResults] CHECK CONSTRAINT [FK_PracticeResults_Vocabularies]
GO
ALTER TABLE [dbo].[Vocabularies]  WITH CHECK ADD  CONSTRAINT [FK_Vocabularies_Levels] FOREIGN KEY([LevelID])
REFERENCES [dbo].[Levels] ([ID])
GO
ALTER TABLE [dbo].[Vocabularies] CHECK CONSTRAINT [FK_Vocabularies_Levels]
GO
ALTER TABLE [dbo].[Vocabularies]  WITH CHECK ADD  CONSTRAINT [FK_Vocabularies_PartOfSpeech] FOREIGN KEY([PartOfSpeechID])
REFERENCES [dbo].[PartOfSpeech] ([ID])
GO
ALTER TABLE [dbo].[Vocabularies] CHECK CONSTRAINT [FK_Vocabularies_PartOfSpeech]
GO
ALTER TABLE [dbo].[Vocabularies]  WITH CHECK ADD  CONSTRAINT [FK_Vocabularies_Words] FOREIGN KEY([WordID])
REFERENCES [dbo].[Words] ([ID])
GO
ALTER TABLE [dbo].[Vocabularies] CHECK CONSTRAINT [FK_Vocabularies_Words]
GO
USE [master]
GO
ALTER DATABASE [EnglishMaster] SET  READ_WRITE 
GO