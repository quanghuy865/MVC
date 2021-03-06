USE [MVCDemo]
GO
/****** Object:  User [Huy]    Script Date: 7/6/2017 6:09:52 PM ******/
CREATE USER [Huy] FOR LOGIN [Huy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/6/2017 6:09:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerCode] [varchar](50) NULL,
	[CustomerName] [nvarchar](255) NULL,
	[Adress] [nvarchar](500) NULL,
	[Phone] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/6/2017 6:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductCode] [varchar](50) NULL,
	[ProductName] [nvarchar](255) NULL,
	[Image] [varchar](50) NULL,
	[LinkDown] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/6/2017 6:09:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserCode] [varchar](40) NULL,
	[Pass] [varchar](100) NULL,
	[FullName] [nvarchar](255) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserCode], [Pass], [FullName], [Status]) VALUES (1, N'00001', N'123456', N'Đặng Quang Huy', N'A')
INSERT [dbo].[User] ([ID], [UserCode], [Pass], [FullName], [Status]) VALUES (2, N'00002', N'123456', N'Trần Lê Bảo Trọng', N'A')
SET IDENTITY_INSERT [dbo].[User] OFF
