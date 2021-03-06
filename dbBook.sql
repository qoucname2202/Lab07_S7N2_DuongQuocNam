USE [master]
GO
/****** Object:  Database [dbBook]    Script Date: 17/07/2021 1:48:04 CH ******/
CREATE DATABASE [dbBook]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbBook', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\dbBook.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbBook_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\dbBook_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbBook] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbBook].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbBook] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbBook] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbBook] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbBook] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbBook] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbBook] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dbBook] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbBook] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbBook] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbBook] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbBook] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbBook] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbBook] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbBook] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbBook] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dbBook] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbBook] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbBook] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbBook] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbBook] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbBook] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbBook] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbBook] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbBook] SET  MULTI_USER 
GO
ALTER DATABASE [dbBook] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbBook] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbBook] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbBook] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbBook] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dbBook]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 17/07/2021 1:48:04 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[type] [nvarchar](50) NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (1, N'Conan', N'Trinh Thám', 20000)
INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (2, N'Naruto', N'Anime', 19000)
INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (3, N'Tôi thấy hoa vàng trên cỏ xanh', N'Truyện Ngắn', 20000)
INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (4, N'HTML & CSS', N'Giáo Dục', 22000)
INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (5, N'Doremon', N'Anime', 30000)
INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (6, N'Bảy Viên Ngọc Rồng', N'Anime', 30000)
INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (7, N'Cơ Sở Dữ Liệu SQL', N'Giáo Dục', 35000)
INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (8, N'Hạt Giống Tâm Hồn', N'Tiểu Thuyết', 45000)
INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (11, N'Nguyễn Thị Ánh Tuyết', N'3213', 213)
INSERT [dbo].[Book] ([id], [name], [type], [price]) VALUES (13, N'kaka', N'123123', 123123)
SET IDENTITY_INSERT [dbo].[Book] OFF
USE [master]
GO
ALTER DATABASE [dbBook] SET  READ_WRITE 
GO
