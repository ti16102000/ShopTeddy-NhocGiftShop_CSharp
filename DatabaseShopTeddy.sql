USE [master]
GO
/****** Object:  Database [NhocGiftShop]    Script Date: 22-Apr-20 12:43:22 AM ******/
CREATE DATABASE [NhocGiftShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NhocGiftShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NhocGiftShop.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NhocGiftShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\NhocGiftShop_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [NhocGiftShop] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NhocGiftShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NhocGiftShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NhocGiftShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NhocGiftShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NhocGiftShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NhocGiftShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [NhocGiftShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NhocGiftShop] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NhocGiftShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NhocGiftShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NhocGiftShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NhocGiftShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NhocGiftShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NhocGiftShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NhocGiftShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NhocGiftShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NhocGiftShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NhocGiftShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NhocGiftShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NhocGiftShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NhocGiftShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NhocGiftShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NhocGiftShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NhocGiftShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NhocGiftShop] SET RECOVERY FULL 
GO
ALTER DATABASE [NhocGiftShop] SET  MULTI_USER 
GO
ALTER DATABASE [NhocGiftShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NhocGiftShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NhocGiftShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NhocGiftShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [NhocGiftShop]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 22-Apr-20 12:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[idCate] [int] IDENTITY(1,1) NOT NULL,
	[nameCate] [nvarchar](200) NOT NULL,
	[specialCate] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[idCate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InformationPerson]    Script Date: 22-Apr-20 12:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InformationPerson](
	[idIP] [int] IDENTITY(1,1) NOT NULL,
	[nameIP] [nvarchar](100) NOT NULL,
	[pwd] [nvarchar](20) NULL,
	[email] [nvarchar](50) NULL,
	[gender] [bit] NULL,
	[address] [nvarchar](500) NULL,
	[phone] [varchar](20) NOT NULL,
	[DOB] [date] NULL,
	[idR] [int] NOT NULL,
 CONSTRAINT [PK_InformationPerson] PRIMARY KEY CLUSTERED 
(
	[idIP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 22-Apr-20 12:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[idOD] [int] IDENTITY(1,1) NOT NULL,
	[idOP] [int] NOT NULL,
	[idPF] [int] NOT NULL,
	[priceOD] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[amount] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[idOD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 22-Apr-20 12:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[idOP] [int] IDENTITY(1,1) NOT NULL,
	[idIP] [int] NOT NULL,
	[total] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[idOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 22-Apr-20 12:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[idPro] [int] IDENTITY(1,1) NOT NULL,
	[namePro] [nvarchar](500) NOT NULL,
	[material] [nvarchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[idSC] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[idPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductFormat]    Script Date: 22-Apr-20 12:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductFormat](
	[idPF] [int] IDENTITY(1,1) NOT NULL,
	[idPro] [int] NOT NULL,
	[size] [varchar](10) NULL,
	[price] [int] NULL,
	[colorCSS] [varchar](20) NULL,
	[colorName] [nvarchar](20) NULL,
 CONSTRAINT [PK_ProductFormat] PRIMARY KEY CLUSTERED 
(
	[idPF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 22-Apr-20 12:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[idPI] [int] IDENTITY(1,1) NOT NULL,
	[idPro] [int] NOT NULL,
	[imgPro] [nvarchar](max) NULL,
	[imgMain] [bit] NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[idPI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 22-Apr-20 12:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[idR] [int] IDENTITY(1,1) NOT NULL,
	[nameR] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[idR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 22-Apr-20 12:43:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[idSC] [int] IDENTITY(1,1) NOT NULL,
	[nameSC] [nvarchar](200) NOT NULL,
	[idCate] [int] NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[idSC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[InformationPerson] ADD  CONSTRAINT [DF_InformationPerson_DOB]  DEFAULT (CONVERT([date],getdate())) FOR [DOB]
GO
ALTER TABLE [dbo].[InformationPerson]  WITH CHECK ADD  CONSTRAINT [FK_InformationPerson_Role] FOREIGN KEY([idR])
REFERENCES [dbo].[Role] ([idR])
GO
ALTER TABLE [dbo].[InformationPerson] CHECK CONSTRAINT [FK_InformationPerson_Role]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_OrderProduct] FOREIGN KEY([idOP])
REFERENCES [dbo].[OrderProduct] ([idOP])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_OrderProduct]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_ProductFormat] FOREIGN KEY([idPF])
REFERENCES [dbo].[ProductFormat] ([idPF])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_ProductFormat]
GO
ALTER TABLE [dbo].[OrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_OrderProduct_InformationPerson] FOREIGN KEY([idIP])
REFERENCES [dbo].[InformationPerson] ([idIP])
GO
ALTER TABLE [dbo].[OrderProduct] CHECK CONSTRAINT [FK_OrderProduct_InformationPerson]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_SubCategory] FOREIGN KEY([idSC])
REFERENCES [dbo].[SubCategory] ([idSC])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_SubCategory]
GO
ALTER TABLE [dbo].[ProductFormat]  WITH CHECK ADD  CONSTRAINT [FK_ProductFormat_Product] FOREIGN KEY([idPro])
REFERENCES [dbo].[Product] ([idPro])
GO
ALTER TABLE [dbo].[ProductFormat] CHECK CONSTRAINT [FK_ProductFormat_Product]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Product] FOREIGN KEY([idPro])
REFERENCES [dbo].[Product] ([idPro])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Product]
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY([idCate])
REFERENCES [dbo].[Category] ([idCate])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Category]
GO
USE [master]
GO
ALTER DATABASE [NhocGiftShop] SET  READ_WRITE 
GO
