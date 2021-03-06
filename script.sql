USE [master]
GO
/****** Object:  Database [DAI_Personaje]    Script Date: 27/4/2022 09:20:20 ******/
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
/****** Object:  User [Personaje]    Script Date: 27/4/2022 09:20:20 ******/
CREATE USER [Personaje] FOR LOGIN [Personaje] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [alumno]    Script Date: 27/4/2022 09:20:20 ******/
CREATE USER [alumno] FOR LOGIN [alumno] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [Personaje]
GO
/****** Object:  Table [dbo].[Personajes]    Script Date: 27/4/2022 09:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personajes](
	[imagen] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[edad] [int] NULL,
	[peso] [int] NULL,
	[historia] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Personajes] ([imagen], [nombre], [edad], [peso], [historia]) VALUES (N'aaa', N'Marty', 25, 75, N'Viaja en el tiempo')
INSERT [dbo].[Personajes] ([imagen], [nombre], [edad], [peso], [historia]) VALUES (N'bbb', N'Bob Esponja', 13, 28, N'Es una esponja que labura')
INSERT [dbo].[Personajes] ([imagen], [nombre], [edad], [peso], [historia]) VALUES (N'ccc', N'McQueen', 20, 100, N'Corredor de la copa Piston')
GO
USE [master]
GO
ALTER DATABASE [DAI_Personaje] SET  READ_WRITE 
GO
