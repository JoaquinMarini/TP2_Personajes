USE [master]
GO
/****** Object:  Database [DAI_Personaje]    Script Date: 10/5/2022 09:02:16 ******/
CREATE DATABASE [DAI_Personaje]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DAI_Personaje', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DAI_Personaje.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DAI_Personaje_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DAI_Personaje_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DAI_Personaje] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DAI_Personaje].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DAI_Personaje] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DAI_Personaje] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DAI_Personaje] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DAI_Personaje] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DAI_Personaje] SET ARITHABORT OFF 
GO
ALTER DATABASE [DAI_Personaje] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DAI_Personaje] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DAI_Personaje] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DAI_Personaje] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DAI_Personaje] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DAI_Personaje] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DAI_Personaje] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DAI_Personaje] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DAI_Personaje] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DAI_Personaje] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DAI_Personaje] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DAI_Personaje] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DAI_Personaje] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DAI_Personaje] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DAI_Personaje] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DAI_Personaje] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DAI_Personaje] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DAI_Personaje] SET RECOVERY FULL 
GO
ALTER DATABASE [DAI_Personaje] SET  MULTI_USER 
GO
ALTER DATABASE [DAI_Personaje] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DAI_Personaje] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DAI_Personaje] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DAI_Personaje] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DAI_Personaje] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DAI_Personaje', N'ON'
GO
ALTER DATABASE [DAI_Personaje] SET QUERY_STORE = OFF
GO
USE [DAI_Personaje]
GO
/****** Object:  User [alumno]    Script Date: 10/5/2022 09:02:16 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 10/5/2022 09:02:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imagen] [varchar](50) NULL,
	[Nombre] [varchar](50) NULL,
	[Edad] [int] NULL,
	[Peso] [int] NULL,
	[Historia] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Personajes] ON 

INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (1, N'a', N'Luli', 17, 55, N'Juega al futbol')
INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (2, N'b', N'Maro', 17, 67, N'Juega al pingpong')
INSERT [dbo].[Personajes] ([Id], [Imagen], [Nombre], [Edad], [Peso], [Historia]) VALUES (3, N'c', N'Juli', 1, 1, N'Profe de DAI')
SET IDENTITY_INSERT [dbo].[Personajes] OFF
GO
USE [master]
GO
ALTER DATABASE [DAI_Personaje] SET  READ_WRITE 
GO
