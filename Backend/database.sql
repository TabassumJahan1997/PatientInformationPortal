USE [master]
GO
/****** Object:  Database [PatientInformationPortalDb]    Script Date: 7/10/2023 4:38:59 PM ******/
CREATE DATABASE [PatientInformationPortalDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PatientInformationPortalDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PatientInformationPortalDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PatientInformationPortalDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PatientInformationPortalDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PatientInformationPortalDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PatientInformationPortalDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PatientInformationPortalDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PatientInformationPortalDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PatientInformationPortalDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PatientInformationPortalDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PatientInformationPortalDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [PatientInformationPortalDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET RECOVERY FULL 
GO
ALTER DATABASE [PatientInformationPortalDb] SET  MULTI_USER 
GO
ALTER DATABASE [PatientInformationPortalDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PatientInformationPortalDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PatientInformationPortalDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PatientInformationPortalDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PatientInformationPortalDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PatientInformationPortalDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PatientInformationPortalDb', N'ON'
GO
ALTER DATABASE [PatientInformationPortalDb] SET QUERY_STORE = OFF
GO
USE [PatientInformationPortalDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/10/2023 4:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAllergies_Details]    Script Date: 7/10/2023 4:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAllergies_Details](
	[Allergies_Details_Id] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NOT NULL,
	[AllergyId] [int] NOT NULL,
 CONSTRAINT [PK_tblAllergies_Details] PRIMARY KEY CLUSTERED 
(
	[Allergies_Details_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAllergy]    Script Date: 7/10/2023 4:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAllergy](
	[AllergyId] [int] IDENTITY(1,1) NOT NULL,
	[AllergyName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblAllergy] PRIMARY KEY CLUSTERED 
(
	[AllergyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDisease]    Script Date: 7/10/2023 4:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDisease](
	[DiseaseId] [int] IDENTITY(1,1) NOT NULL,
	[DiseaseName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblDisease] PRIMARY KEY CLUSTERED 
(
	[DiseaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNCD]    Script Date: 7/10/2023 4:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNCD](
	[NCD_Id] [int] IDENTITY(1,1) NOT NULL,
	[NCD_Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblNCD] PRIMARY KEY CLUSTERED 
(
	[NCD_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNCD_Details]    Script Date: 7/10/2023 4:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNCD_Details](
	[NCD_Details_Id] [int] IDENTITY(1,1) NOT NULL,
	[NCD_Id] [int] NOT NULL,
	[PatientId] [int] NOT NULL,
 CONSTRAINT [PK_tblNCD_Details] PRIMARY KEY CLUSTERED 
(
	[NCD_Details_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPatient]    Script Date: 7/10/2023 4:38:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPatient](
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[PatientName] [nvarchar](70) NOT NULL,
	[Epilepsy] [int] NOT NULL,
	[DiseaseId] [int] NOT NULL,
 CONSTRAINT [PK_tblPatient] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230707080445_created database', N'6.0.19')
GO
SET IDENTITY_INSERT [dbo].[tblAllergy] ON 

INSERT [dbo].[tblAllergy] ([AllergyId], [AllergyName]) VALUES (1, N'Drugs-Penicillin')
INSERT [dbo].[tblAllergy] ([AllergyId], [AllergyName]) VALUES (2, N'Drugs-Others')
INSERT [dbo].[tblAllergy] ([AllergyId], [AllergyName]) VALUES (3, N'Animals')
INSERT [dbo].[tblAllergy] ([AllergyId], [AllergyName]) VALUES (4, N'Food')
INSERT [dbo].[tblAllergy] ([AllergyId], [AllergyName]) VALUES (5, N'Oinments')
INSERT [dbo].[tblAllergy] ([AllergyId], [AllergyName]) VALUES (6, N'Plant')
INSERT [dbo].[tblAllergy] ([AllergyId], [AllergyName]) VALUES (7, N'Sprays')
INSERT [dbo].[tblAllergy] ([AllergyId], [AllergyName]) VALUES (8, N'Others')
INSERT [dbo].[tblAllergy] ([AllergyId], [AllergyName]) VALUES (9, N'No Allergies')
SET IDENTITY_INSERT [dbo].[tblAllergy] OFF
GO
SET IDENTITY_INSERT [dbo].[tblDisease] ON 

INSERT [dbo].[tblDisease] ([DiseaseId], [DiseaseName]) VALUES (1, N'Anaemia')
INSERT [dbo].[tblDisease] ([DiseaseId], [DiseaseName]) VALUES (2, N'Asthma')
INSERT [dbo].[tblDisease] ([DiseaseId], [DiseaseName]) VALUES (3, N'Brain Tumour')
INSERT [dbo].[tblDisease] ([DiseaseId], [DiseaseName]) VALUES (4, N'Leukemia')
INSERT [dbo].[tblDisease] ([DiseaseId], [DiseaseName]) VALUES (5, N'Malaria')
INSERT [dbo].[tblDisease] ([DiseaseId], [DiseaseName]) VALUES (6, N'Tetanus')
SET IDENTITY_INSERT [dbo].[tblDisease] OFF
GO
SET IDENTITY_INSERT [dbo].[tblNCD] ON 

INSERT [dbo].[tblNCD] ([NCD_Id], [NCD_Name]) VALUES (1, N'Asthma')
INSERT [dbo].[tblNCD] ([NCD_Id], [NCD_Name]) VALUES (2, N'Cancer')
INSERT [dbo].[tblNCD] ([NCD_Id], [NCD_Name]) VALUES (3, N'Disorders of ears')
INSERT [dbo].[tblNCD] ([NCD_Id], [NCD_Name]) VALUES (4, N'Disorder of eye')
INSERT [dbo].[tblNCD] ([NCD_Id], [NCD_Name]) VALUES (5, N'Mental illness')
INSERT [dbo].[tblNCD] ([NCD_Id], [NCD_Name]) VALUES (6, N'Oral health problems')
SET IDENTITY_INSERT [dbo].[tblNCD] OFF
GO
SET IDENTITY_INSERT [dbo].[tblPatient] ON 

INSERT [dbo].[tblPatient] ([PatientId], [PatientName], [Epilepsy], [DiseaseId]) VALUES (2, N'Mark', 1, 1)
INSERT [dbo].[tblPatient] ([PatientId], [PatientName], [Epilepsy], [DiseaseId]) VALUES (3, N'Alina', 1, 2)
INSERT [dbo].[tblPatient] ([PatientId], [PatientName], [Epilepsy], [DiseaseId]) VALUES (4, N'Alfred', 1, 3)
INSERT [dbo].[tblPatient] ([PatientId], [PatientName], [Epilepsy], [DiseaseId]) VALUES (6, N'Julia', 2, 3)
SET IDENTITY_INSERT [dbo].[tblPatient] OFF
GO
/****** Object:  Index [IX_tblAllergies_Details_AllergyId]    Script Date: 7/10/2023 4:38:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_tblAllergies_Details_AllergyId] ON [dbo].[tblAllergies_Details]
(
	[AllergyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tblAllergies_Details_PatientId]    Script Date: 7/10/2023 4:38:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_tblAllergies_Details_PatientId] ON [dbo].[tblAllergies_Details]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tblNCD_Details_NCD_Id]    Script Date: 7/10/2023 4:38:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_tblNCD_Details_NCD_Id] ON [dbo].[tblNCD_Details]
(
	[NCD_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tblNCD_Details_PatientId]    Script Date: 7/10/2023 4:38:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_tblNCD_Details_PatientId] ON [dbo].[tblNCD_Details]
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_tblPatient_DiseaseId]    Script Date: 7/10/2023 4:38:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_tblPatient_DiseaseId] ON [dbo].[tblPatient]
(
	[DiseaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblAllergies_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblAllergies_Details_tblAllergy_AllergyId] FOREIGN KEY([AllergyId])
REFERENCES [dbo].[tblAllergy] ([AllergyId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblAllergies_Details] CHECK CONSTRAINT [FK_tblAllergies_Details_tblAllergy_AllergyId]
GO
ALTER TABLE [dbo].[tblAllergies_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblAllergies_Details_tblPatient_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[tblPatient] ([PatientId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblAllergies_Details] CHECK CONSTRAINT [FK_tblAllergies_Details_tblPatient_PatientId]
GO
ALTER TABLE [dbo].[tblNCD_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblNCD_Details_tblNCD_NCD_Id] FOREIGN KEY([NCD_Id])
REFERENCES [dbo].[tblNCD] ([NCD_Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblNCD_Details] CHECK CONSTRAINT [FK_tblNCD_Details_tblNCD_NCD_Id]
GO
ALTER TABLE [dbo].[tblNCD_Details]  WITH CHECK ADD  CONSTRAINT [FK_tblNCD_Details_tblPatient_PatientId] FOREIGN KEY([PatientId])
REFERENCES [dbo].[tblPatient] ([PatientId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblNCD_Details] CHECK CONSTRAINT [FK_tblNCD_Details_tblPatient_PatientId]
GO
ALTER TABLE [dbo].[tblPatient]  WITH CHECK ADD  CONSTRAINT [FK_tblPatient_tblDisease_DiseaseId] FOREIGN KEY([DiseaseId])
REFERENCES [dbo].[tblDisease] ([DiseaseId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblPatient] CHECK CONSTRAINT [FK_tblPatient_tblDisease_DiseaseId]
GO
USE [master]
GO
ALTER DATABASE [PatientInformationPortalDb] SET  READ_WRITE 
GO
