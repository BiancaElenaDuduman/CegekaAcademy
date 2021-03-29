USE [master]
GO
/****** Object:  Database [CarDealership]    Script Date: 30/03/2021 00:01:51 ******/
CREATE DATABASE [CarDealership]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarDealership', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CarDealership.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarDealership_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CarDealership_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CarDealership] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarDealership].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarDealership] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarDealership] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarDealership] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarDealership] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarDealership] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarDealership] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CarDealership] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarDealership] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarDealership] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarDealership] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarDealership] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarDealership] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarDealership] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarDealership] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarDealership] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CarDealership] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarDealership] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarDealership] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarDealership] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarDealership] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarDealership] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CarDealership] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarDealership] SET RECOVERY FULL 
GO
ALTER DATABASE [CarDealership] SET  MULTI_USER 
GO
ALTER DATABASE [CarDealership] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarDealership] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarDealership] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarDealership] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CarDealership] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CarDealership] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CarDealership', N'ON'
GO
ALTER DATABASE [CarDealership] SET QUERY_STORE = OFF
GO
USE [CarDealership]
GO
/****** Object:  Table [dbo].[ActualCarFeatures]    Script Date: 30/03/2021 00:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActualCarFeatures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[leather_seats] [bit] NULL,
	[air_con] [bit] NULL,
	[heated_seats] [bit] NULL,
	[sunroof] [bit] NULL,
	[remote_start] [bit] NULL,
	[bluetooth] [bit] NULL,
	[navigation] [bit] NULL,
 CONSTRAINT [PK_ActualCarFeatures] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Brand]    Script Date: 30/03/2021 00:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Brand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Car_Brand] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Car_Model]    Script Date: 30/03/2021 00:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Car_Model](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[brand_id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[features_id] [int] NOT NULL,
 CONSTRAINT [PK_Car_Model] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars_on_Sale]    Script Date: 30/03/2021 00:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars_on_Sale](
	[model_id] [int] NOT NULL,
	[year] [int] NULL,
	[price] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cars_Sold]    Script Date: 30/03/2021 00:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars_Sold](
	[model_id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[date_sold] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 30/03/2021 00:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](20) NOT NULL,
	[last_name] [varchar](20) NOT NULL,
	[email] [varchar](30) NULL,
	[phone] [varchar](30) NOT NULL,
	[address] [varchar](100) NOT NULL,
	[car_bought] [int] NULL,
	[car_interest] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PossibleFeatures]    Script Date: 30/03/2021 00:01:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PossibleFeatures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[features] [varchar](150) NOT NULL,
 CONSTRAINT [PK_PossibleFeatures] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Car_Brand]  WITH CHECK ADD  CONSTRAINT [FK_Car_Brand_Car_Brand] FOREIGN KEY([id])
REFERENCES [dbo].[Car_Brand] ([id])
GO
ALTER TABLE [dbo].[Car_Brand] CHECK CONSTRAINT [FK_Car_Brand_Car_Brand]
GO
ALTER TABLE [dbo].[Car_Model]  WITH CHECK ADD  CONSTRAINT [FK_Car_Model_ActualCarFeatures] FOREIGN KEY([features_id])
REFERENCES [dbo].[ActualCarFeatures] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Car_Model] CHECK CONSTRAINT [FK_Car_Model_ActualCarFeatures]
GO
ALTER TABLE [dbo].[Car_Model]  WITH CHECK ADD  CONSTRAINT [FK_Car_Model_Car_Brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[Car_Brand] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Car_Model] CHECK CONSTRAINT [FK_Car_Model_Car_Brand]
GO
ALTER TABLE [dbo].[Cars_on_Sale]  WITH CHECK ADD  CONSTRAINT [FK_Cars_on_Sale_Car_Model] FOREIGN KEY([model_id])
REFERENCES [dbo].[Car_Model] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars_on_Sale] CHECK CONSTRAINT [FK_Cars_on_Sale_Car_Model]
GO
ALTER TABLE [dbo].[Cars_Sold]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Sold_Car_Model] FOREIGN KEY([model_id])
REFERENCES [dbo].[Car_Model] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars_Sold] CHECK CONSTRAINT [FK_Cars_Sold_Car_Model]
GO
ALTER TABLE [dbo].[Cars_Sold]  WITH CHECK ADD  CONSTRAINT [FK_Cars_Sold_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cars_Sold] CHECK CONSTRAINT [FK_Cars_Sold_Customer]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Car_Model] FOREIGN KEY([car_interest])
REFERENCES [dbo].[Car_Model] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Car_Model]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Car_Model1] FOREIGN KEY([car_bought])
REFERENCES [dbo].[Car_Model] ([id])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Car_Model1]
GO
USE [master]
GO
ALTER DATABASE [CarDealership] SET  READ_WRITE 
GO
