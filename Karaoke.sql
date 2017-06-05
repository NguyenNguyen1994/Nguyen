USE [KaraokeOnline]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 6/5/2017 6:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genre](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Singer]    Script Date: 6/5/2017 6:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Singer](
	[ID] [varchar](100) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Singer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Song]    Script Date: 6/5/2017 6:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Song](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[GenreID] [varchar](50) NOT NULL,
	[DateUpload] [date] NOT NULL,
	[Views] [int] NOT NULL,
 CONSTRAINT [PK_Song] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SongDetails]    Script Date: 6/5/2017 6:02:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SongDetails](
	[SongID] [varchar](50) NOT NULL,
	[SingerID] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SongDetails] PRIMARY KEY CLUSTERED 
(
	[SongID] ASC,
	[SingerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (N'nhacnuocngoai', N'Nhạc Nước Ngoài')
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (N'nhactre', N'Nhạc Trẻ')
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (N'nhactrutinh', N'Nhạc Trữ Tình')
INSERT [dbo].[Singer] ([ID], [Name]) VALUES (N'JohnLegend', N'John Legend')
INSERT [dbo].[Singer] ([ID], [Name]) VALUES (N'LeQuyen', N'Lệ Quyên')
INSERT [dbo].[Singer] ([ID], [Name]) VALUES (N'MLTR', N'Michael Learns To Rock')
INSERT [dbo].[Singer] ([ID], [Name]) VALUES (N'QuangLe', N'Quang Lê')
INSERT [dbo].[Singer] ([ID], [Name]) VALUES (N'RichardMarx', N'Richard Marx')
INSERT [dbo].[Singer] ([ID], [Name]) VALUES (N'SonTungMTP', N'Sơn Tùng - MTP')
INSERT [dbo].[Song] ([ID], [Name], [GenreID], [DateUpload], [Views]) VALUES (N'7_-qnriI87I', N'Lạc Trôi', N'nhactre', CAST(N'2017-06-05' AS Date), 0)
INSERT [dbo].[Song] ([ID], [Name], [GenreID], [DateUpload], [Views]) VALUES (N'BjXCSOmuJxs', N'Sầu Tím Thiệp Hồng', N'nhactrutinh', CAST(N'2017-06-05' AS Date), 0)
INSERT [dbo].[Song] ([ID], [Name], [GenreID], [DateUpload], [Views]) VALUES (N'BSiv3VL0joE', N'Tình Lỡ', N'nhactrutinh', CAST(N'2017-06-05' AS Date), 0)
INSERT [dbo].[Song] ([ID], [Name], [GenreID], [DateUpload], [Views]) VALUES (N'kr8wPkdHFA0', N'All of Me', N'nhacnuocngoai', CAST(N'2017-06-05' AS Date), 0)
INSERT [dbo].[Song] ([ID], [Name], [GenreID], [DateUpload], [Views]) VALUES (N'ohyEwU8eeOg', N'Chắc Ai Đó Sẽ Về', N'nhactre', CAST(N'2017-06-05' AS Date), 0)
INSERT [dbo].[Song] ([ID], [Name], [GenreID], [DateUpload], [Views]) VALUES (N'pWGrXHlSEKU', N'25 Minutes', N'nhacnuocngoai', CAST(N'2017-06-05' AS Date), 0)
INSERT [dbo].[Song] ([ID], [Name], [GenreID], [DateUpload], [Views]) VALUES (N'YDWDU0YWVVQ', N'Right Here Waiting', N'nhacnuocngoai', CAST(N'2017-06-05' AS Date), 0)
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'7_-qnriI87I', N'SonTungMTP')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'BjXCSOmuJxs', N'LeQuyen')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'BjXCSOmuJxs', N'QuangLe')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'BSiv3VL0joE', N'LeQuyen')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'kr8wPkdHFA0', N'JohnLegend')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'ohyEwU8eeOg', N'SonTungMTP')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'pWGrXHlSEKU', N'MLTR')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'YDWDU0YWVVQ', N'RichardMarx')
