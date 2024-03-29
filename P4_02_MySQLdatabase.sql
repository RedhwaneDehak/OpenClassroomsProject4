USE [master]
GO
/****** Object:  Database [Delivery  ExpressFood]    Script Date: 01-Feb-21 4:20:33 PM ******/
CREATE DATABASE [Delivery  ExpressFood]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Delivery  ExpressFood', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Delivery  ExpressFood.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Delivery  ExpressFood_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Delivery  ExpressFood_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Delivery  ExpressFood] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Delivery  ExpressFood].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Delivery  ExpressFood] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET ARITHABORT OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Delivery  ExpressFood] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Delivery  ExpressFood] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Delivery  ExpressFood] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Delivery  ExpressFood] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Delivery  ExpressFood] SET  MULTI_USER 
GO
ALTER DATABASE [Delivery  ExpressFood] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Delivery  ExpressFood] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Delivery  ExpressFood] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Delivery  ExpressFood] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Delivery  ExpressFood] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Delivery  ExpressFood] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Delivery  ExpressFood] SET QUERY_STORE = OFF
GO
USE [Delivery  ExpressFood]
GO
/****** Object:  Table [dbo].[Adress]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adress](
	[AdressID] [int] NOT NULL,
	[ClientID] [int] NOT NULL,
	[Street] [varchar](45) NOT NULL,
	[Number] [int] NOT NULL,
	[ZipCode] [int] NOT NULL,
	[City] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Adress] PRIMARY KEY CLUSTERED 
(
	[AdressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AvailabilityDM]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvailabilityDM](
	[AvailabilityID] [int] NOT NULL,
	[StatusDM] [varchar](20) NOT NULL,
 CONSTRAINT [PK_AvailabilityDM] PRIMARY KEY CLUSTERED 
(
	[AvailabilityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] NOT NULL,
	[NameCtg] [varchar](45) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[FirstName] [varchar](45) NOT NULL,
	[LastName] [varchar](45) NOT NULL,
	[Email] [varchar](45) NOT NULL,
	[PhoneNr] [int] NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryMen]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryMen](
	[DeliveryMenID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[AvailabilityID] [int] NOT NULL,
	[FirstName] [varchar](45) NOT NULL,
	[LastName] [varchar](45) NOT NULL,
	[PhoneNr] [varchar](45) NOT NULL,
	[Longitude] [decimal](8, 6) NOT NULL,
	[Latitude] [decimal](8, 6) NOT NULL,
 CONSTRAINT [PK_DeliveryMen] PRIMARY KEY CLUSTERED 
(
	[DeliveryMenID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuItem]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItem](
	[MenuItemID] [int] NOT NULL,
	[DateM] [date] NOT NULL,
	[DescriptionM] [varchar](45) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Price] [decimal](5, 2) NOT NULL,
	[AmountStock] [int] NOT NULL,
 CONSTRAINT [PK_MenuItem] PRIMARY KEY CLUSTERED 
(
	[MenuItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderList]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderList](
	[MenuItemID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] NOT NULL,
	[ClientID] [int] NOT NULL,
	[DateTimeOrder] [datetime] NOT NULL,
	[TotalPrice] [decimal](5, 2) NOT NULL,
	[PaymentID] [int] NOT NULL,
	[DeliveryMenID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentID] [int] NOT NULL,
	[PaymentMethodID] [varchar](45) NOT NULL,
	[OrderID] [int] NOT NULL,
	[PaymentAmmount] [decimal](5, 2) NOT NULL,
	[DateOfPayment] [date] NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethod]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethod](
	[PaymentMethodID] [varchar](45) NOT NULL,
	[DescriptionPMethod] [varchar](45) NOT NULL,
 CONSTRAINT [PK_PaymentMethod] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusID] [int] NOT NULL,
	[StatusOrder] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserEfood]    Script Date: 01-Feb-21 4:20:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEfood](
	[UserID] [int] NOT NULL,
	[UserPassword] [varchar](45) NOT NULL,
 CONSTRAINT [PK_UserEfood] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (1, 1, N'Josephstrasse', 23, 8005, N'Zurich')
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (2, 2, N'Motorenstrasse', 12, 8005, N'Zuirch')
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (3, 3, N'Bahnhofstrasse', 15, 8001, N'Zurich')
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (4, 4, N'Löwenstrasse', 10, 8001, N'Zurich')
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (5, 5, N'Limmatstrasse', 8, 8005, N'Zurich')
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (6, 6, N'Langstrasse', 1, 8005, N'Zurich')
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (7, 7, N'Kasernenstrasse', 5, 8004, N'Zurich')
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (8, 8, N'Universitätstrasse', 60, 8006, N'Zurich')
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (9, 9, N'Theaterstrasse', 55, 8000, N'Zurich')
INSERT [dbo].[Adress] ([AdressID], [ClientID], [Street], [Number], [ZipCode], [City]) VALUES (10, 10, N'Albisriederstrasse', 33, 8003, N'Zurich')
GO
INSERT [dbo].[AvailabilityDM] ([AvailabilityID], [StatusDM]) VALUES (111, N'availabale')
INSERT [dbo].[AvailabilityDM] ([AvailabilityID], [StatusDM]) VALUES (222, N'in delivery')
INSERT [dbo].[AvailabilityDM] ([AvailabilityID], [StatusDM]) VALUES (333, N'in delivery')
INSERT [dbo].[AvailabilityDM] ([AvailabilityID], [StatusDM]) VALUES (444, N'availabale')
INSERT [dbo].[AvailabilityDM] ([AvailabilityID], [StatusDM]) VALUES (555, N'in delivery')
GO
INSERT [dbo].[Category] ([CategoryID], [NameCtg]) VALUES (1, N'Main Dish')
INSERT [dbo].[Category] ([CategoryID], [NameCtg]) VALUES (2, N'Dessert')
GO
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (1, 1, N'Mellissa', N'Cedric', N'mellissa@hormail.com', 790190584)
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (2, 2, N'Emma', N'Maurice', N'emma@hormail.fr', 787654891)
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (3, 3, N'Manar', N'Dea', N'manar@gmail.com', 741399653)
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (4, 4, N'Nouri', N'Patrick', N'nouri@hormail.com', 988796346)
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (5, 5, N'Julien', N'Jean', N'roland@gmx.ch', 989569187)
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (6, 6, N'Simon', N'Mauriau', N'simon@hormail.com', 988719006)
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (7, 7, N'Nicolas', N'Davis', N'nicolas@outlook.com', 988945275)
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (8, 8, N'Anja', N'Tho', N'anja@gmail.com', 988604762)
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (9, 9, N'Nora', N'bea', N'nora@hotmail.com', 977600711)
INSERT [dbo].[Client] ([ClientID], [UserID], [FirstName], [LastName], [Email], [PhoneNr]) VALUES (10, 10, N'Anes', N'Adel', N'Anes@gmail.com', 972603722)
GO
INSERT [dbo].[DeliveryMen] ([DeliveryMenID], [UserID], [OrderID], [AvailabilityID], [FirstName], [LastName], [PhoneNr], [Longitude], [Latitude]) VALUES (1, 1, 1, 111, N'Davison', N'liu', N'0790124412', CAST(48.773400 AS Decimal(8, 6)), CAST(58.807000 AS Decimal(8, 6)))
INSERT [dbo].[DeliveryMen] ([DeliveryMenID], [UserID], [OrderID], [AvailabilityID], [FirstName], [LastName], [PhoneNr], [Longitude], [Latitude]) VALUES (2, 2, 2, 222, N'Rafa', N'Michelle', N'0763657933', CAST(76.443700 AS Decimal(8, 6)), CAST(65.007800 AS Decimal(8, 6)))
INSERT [dbo].[DeliveryMen] ([DeliveryMenID], [UserID], [OrderID], [AvailabilityID], [FirstName], [LastName], [PhoneNr], [Longitude], [Latitude]) VALUES (3, 3, 3, 333, N'Tom', N'Schmiz', N'0731429653', CAST(28.137700 AS Decimal(8, 6)), CAST(62.995200 AS Decimal(8, 6)))
INSERT [dbo].[DeliveryMen] ([DeliveryMenID], [UserID], [OrderID], [AvailabilityID], [FirstName], [LastName], [PhoneNr], [Longitude], [Latitude]) VALUES (4, 4, 4, 444, N'Nkevin', N'Jens', N'0968886213', CAST(34.872000 AS Decimal(8, 6)), CAST(29.027800 AS Decimal(8, 6)))
INSERT [dbo].[DeliveryMen] ([DeliveryMenID], [UserID], [OrderID], [AvailabilityID], [FirstName], [LastName], [PhoneNr], [Longitude], [Latitude]) VALUES (5, 5, 5, 555, N'Sven', N'Jung', N'0750232749', CAST(20.663000 AS Decimal(8, 6)), CAST(21.100800 AS Decimal(8, 6)))
GO
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (1, CAST(N'2020-12-13' AS Date), N'Lasagne', 1, CAST(10.00 AS Decimal(5, 2)), 10)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (2, CAST(N'2020-12-13' AS Date), N'Fried chicken', 1, CAST(8.50 AS Decimal(5, 2)), 15)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (3, CAST(N'2020-12-13' AS Date), N'Tiramisu', 2, CAST(3.35 AS Decimal(5, 2)), 20)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (4, CAST(N'2020-12-13' AS Date), N'Fruit Salad', 2, CAST(5.00 AS Decimal(5, 2)), 15)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (5, CAST(N'2020-12-13' AS Date), N'Potatoes Au Gratin', 1, CAST(10.00 AS Decimal(5, 2)), 12)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (6, CAST(N'2020-12-14' AS Date), N'Creamy Salmon Pasta', 1, CAST(15.00 AS Decimal(5, 2)), 15)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (7, CAST(N'2020-12-14' AS Date), N'Chocolate Kiwi Pops', 2, CAST(4.00 AS Decimal(5, 2)), 11)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (8, CAST(N'2020-12-14' AS Date), N'Baked Peaches', 2, CAST(4.00 AS Decimal(5, 2)), 18)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (9, CAST(N'2020-12-15' AS Date), N'Pizza', 1, CAST(7.50 AS Decimal(5, 2)), 10)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (10, CAST(N'2020-12-15' AS Date), N'Sushi', 1, CAST(15.00 AS Decimal(5, 2)), 10)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (11, CAST(N'2020-12-15' AS Date), N'Rolo Stuffed Bananas', 2, CAST(3.50 AS Decimal(5, 2)), 16)
INSERT [dbo].[MenuItem] ([MenuItemID], [DateM], [DescriptionM], [CategoryID], [Price], [AmountStock]) VALUES (12, CAST(N'2020-12-15' AS Date), N'Turtle Apple Pops', 2, CAST(3.50 AS Decimal(5, 2)), 17)
GO
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (1, 1, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (2, 2, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (2, 3, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (3, 4, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (4, 2, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (4, 4, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (5, 1, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (5, 2, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (5, 4, 3)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (6, 2, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (6, 3, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (7, 1, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (7, 2, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (7, 3, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (8, 6, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (8, 8, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (9, 5, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (9, 7, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (10, 6, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (10, 7, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (11, 5, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (11, 6, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (11, 8, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (12, 9, 1)
GO
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (4, 2, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (4, 4, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (5, 1, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (5, 2, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (5, 4, 3)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (6, 2, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (6, 3, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (7, 1, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (7, 2, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (7, 3, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (8, 6, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (8, 8, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (9, 5, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (9, 7, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (10, 6, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (10, 7, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (11, 5, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (11, 6, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (11, 8, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (12, 9, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (1, 1, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (2, 2, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (2, 3, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (3, 4, 1)
GO
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (5, 4, 3)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (6, 2, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (6, 3, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (7, 1, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (7, 2, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (7, 3, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (8, 6, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (8, 8, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (9, 5, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (9, 7, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (10, 6, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (10, 7, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (11, 5, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (11, 6, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (11, 8, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (12, 9, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (1, 1, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (2, 2, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (2, 3, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (3, 4, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (4, 2, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (4, 4, 1)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (5, 1, 2)
INSERT [dbo].[OrderList] ([MenuItemID], [OrderID], [Quantity]) VALUES (5, 2, 1)
GO
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (1, 1, CAST(N'2020-12-13T10:37:20.000' AS DateTime), CAST(15.50 AS Decimal(5, 2)), 1, 1, 1)
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (2, 2, CAST(N'2020-12-13T10:45:00.000' AS DateTime), CAST(31.00 AS Decimal(5, 2)), 2, 2, 2)
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (3, 3, CAST(N'2020-12-13T11:30:10.000' AS DateTime), CAST(20.00 AS Decimal(5, 2)), 3, 3, 2)
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (4, 4, CAST(N'2020-12-13T12:00:30.000' AS DateTime), CAST(46.50 AS Decimal(5, 2)), 4, 5, 2)
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (5, 5, CAST(N'2020-12-13T13:05:55.000' AS DateTime), CAST(15.50 AS Decimal(5, 2)), 5, 1, 1)
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (6, 6, CAST(N'2020-12-14T10:42:33.000' AS DateTime), CAST(31.00 AS Decimal(5, 2)), 6, 2, 1)
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (7, 7, CAST(N'2020-12-14T11:08:22.000' AS DateTime), CAST(20.00 AS Decimal(5, 2)), 7, 4, 2)
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (8, 8, CAST(N'2020-12-14T12:30:17.000' AS DateTime), CAST(40.00 AS Decimal(5, 2)), 8, 1, 2)
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (9, 9, CAST(N'2020-12-14T17:56:12.000' AS DateTime), CAST(15.50 AS Decimal(5, 2)), 9, 2, 2)
INSERT [dbo].[Orders] ([OrderID], [ClientID], [DateTimeOrder], [TotalPrice], [PaymentID], [DeliveryMenID], [StatusID]) VALUES (10, 10, CAST(N'2020-12-14T19:15:03.000' AS DateTime), CAST(31.00 AS Decimal(5, 2)), 10, 3, 1)
GO
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (1, N'1', 1, CAST(15.50 AS Decimal(5, 2)), CAST(N'2020-12-13' AS Date))
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (2, N'2', 2, CAST(31.00 AS Decimal(5, 2)), CAST(N'2020-12-13' AS Date))
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (3, N'3', 3, CAST(20.00 AS Decimal(5, 2)), CAST(N'2020-12-13' AS Date))
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (4, N'2', 4, CAST(46.50 AS Decimal(5, 2)), CAST(N'2020-12-13' AS Date))
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (5, N'3', 5, CAST(15.50 AS Decimal(5, 2)), CAST(N'2020-12-13' AS Date))
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (6, N'1', 6, CAST(31.00 AS Decimal(5, 2)), CAST(N'2020-12-14' AS Date))
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (7, N'1', 7, CAST(20.00 AS Decimal(5, 2)), CAST(N'2020-12-14' AS Date))
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (8, N'3', 8, CAST(40.00 AS Decimal(5, 2)), CAST(N'2020-12-14' AS Date))
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (9, N'3', 9, CAST(15.50 AS Decimal(5, 2)), CAST(N'2020-12-14' AS Date))
INSERT [dbo].[Payment] ([PaymentID], [PaymentMethodID], [OrderID], [PaymentAmmount], [DateOfPayment]) VALUES (10, N'1', 10, CAST(31.00 AS Decimal(5, 2)), CAST(N'2020-12-14' AS Date))
GO
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [DescriptionPMethod]) VALUES (N'1', N'Cash')
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [DescriptionPMethod]) VALUES (N'2', N'Bank Card')
INSERT [dbo].[PaymentMethod] ([PaymentMethodID], [DescriptionPMethod]) VALUES (N'3', N'Twint')
GO
INSERT [dbo].[Status] ([StatusID], [StatusOrder]) VALUES (1, N'delivered')
INSERT [dbo].[Status] ([StatusID], [StatusOrder]) VALUES (2, N'in delivery')
GO
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (1, N'ABC012')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (2, N'ABC013')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (3, N'ABC014')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (4, N'ABC015')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (5, N'ABC016')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (6, N'ABC017')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (7, N'ABC018')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (8, N'ABC019')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (9, N'ABC020')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (10, N'ABC021')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (11, N'ABC-12')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (12, N'ABC-13')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (13, N'ABC-14')
INSERT [dbo].[UserEfood] ([UserID], [UserPassword]) VALUES (14, N'ABC--16')
GO
ALTER TABLE [dbo].[Adress]  WITH CHECK ADD  CONSTRAINT [FK_Adress_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Adress] CHECK CONSTRAINT [FK_Adress_Client]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_UserEfood] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserEfood] ([UserID])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_UserEfood]
GO
ALTER TABLE [dbo].[DeliveryMen]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryMen_AvailabilityDM] FOREIGN KEY([AvailabilityID])
REFERENCES [dbo].[AvailabilityDM] ([AvailabilityID])
GO
ALTER TABLE [dbo].[DeliveryMen] CHECK CONSTRAINT [FK_DeliveryMen_AvailabilityDM]
GO
ALTER TABLE [dbo].[DeliveryMen]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryMen_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[DeliveryMen] CHECK CONSTRAINT [FK_DeliveryMen_Orders]
GO
ALTER TABLE [dbo].[DeliveryMen]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryMen_UserEfood] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserEfood] ([UserID])
GO
ALTER TABLE [dbo].[DeliveryMen] CHECK CONSTRAINT [FK_DeliveryMen_UserEfood]
GO
ALTER TABLE [dbo].[MenuItem]  WITH CHECK ADD  CONSTRAINT [FK_MenuItem_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[MenuItem] CHECK CONSTRAINT [FK_MenuItem_Category]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [FK_OrderList_MenuItem] FOREIGN KEY([MenuItemID])
REFERENCES [dbo].[MenuItem] ([MenuItemID])
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [FK_OrderList_MenuItem]
GO
ALTER TABLE [dbo].[OrderList]  WITH CHECK ADD  CONSTRAINT [FK_OrderList_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderList] CHECK CONSTRAINT [FK_OrderList_Orders]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ClientID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Client]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_DeliveryMen] FOREIGN KEY([DeliveryMenID])
REFERENCES [dbo].[DeliveryMen] ([DeliveryMenID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_DeliveryMen]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payment1] FOREIGN KEY([PaymentID])
REFERENCES [dbo].[Payment] ([PaymentID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payment1]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([StatusID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Status]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Orders]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentMethod] FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethod] ([PaymentMethodID])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentMethod]
GO
USE [master]
GO
ALTER DATABASE [Delivery  ExpressFood] SET  READ_WRITE 
GO
