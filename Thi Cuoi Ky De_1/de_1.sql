USE [master]
GO
/****** Object:  Database [de1_11052021]    Script Date: 6/24/2021 3:08:10 PM ******/
CREATE DATABASE [de1_test]
 
GO
USE [de1_test]
GO
/****** Object:  Table [dbo].[lop]    Script Date: 6/24/2021 3:08:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tenlop] [nvarchar](50) NULL,
 CONSTRAINT [PK_lop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sinhvien]    Script Date: 6/24/2021 3:08:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sinhvien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[malop] [int] NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[lop] ON 

INSERT [dbo].[lop] ([id], [tenlop]) VALUES (1, N'DHKTPM14A')
INSERT [dbo].[lop] ([id], [tenlop]) VALUES (2, N'DHKTPM14B')
INSERT [dbo].[lop] ([id], [tenlop]) VALUES (3, N'DHKTPM14TT')
SET IDENTITY_INSERT [dbo].[lop] OFF
SET IDENTITY_INSERT [dbo].[sinhvien] ON 

INSERT [dbo].[sinhvien] ([id], [hoten], [email], [malop]) VALUES (1, N'Tran Anh Tuan', N'tuan@mail.com', 1)
INSERT [dbo].[sinhvien] ([id], [hoten], [email], [malop]) VALUES (2, N'Lâm Minh Phuong', N'phuong@mail.com', 1)
INSERT [dbo].[sinhvien] ([id], [hoten], [email], [malop]) VALUES (3, N'Ho Ba Dao', N'dao@mail.com', 2)
SET IDENTITY_INSERT [dbo].[sinhvien] OFF
USE [master]
GO
ALTER DATABASE [de1_test] SET  READ_WRITE 
GO
