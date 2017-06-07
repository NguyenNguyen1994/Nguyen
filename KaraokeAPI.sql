USE [KaraokeAPI]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 6/7/2017 5:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreID] [varchar](50) NOT NULL,
	[GenreName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Singer]    Script Date: 6/7/2017 5:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Singer](
	[SingerID] [varchar](50) NOT NULL,
	[SingerName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Singer] PRIMARY KEY CLUSTERED 
(
	[SingerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Song]    Script Date: 6/7/2017 5:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Song](
	[SongID] [varchar](50) NOT NULL,
	[SongName] [nvarchar](50) NULL,
	[GenreID] [varchar](50) NULL,
	[DateUpload] [datetime] NULL,
	[ViewsCount] [int] NULL,
 CONSTRAINT [PK_Song] PRIMARY KEY CLUSTERED 
(
	[SongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SongDetails]    Script Date: 6/7/2017 5:51:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SongDetails](
	[SongID] [varchar](50) NOT NULL,
	[SingerID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SongDetails] PRIMARY KEY CLUSTERED 
(
	[SongID] ASC,
	[SingerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (N'nhacnuocngoai', N'Nhạc Nước Ngoài')
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (N'nhacrock', N'Nhạc Rock')
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (N'nhactre', N'Nhạc Trẻ')
INSERT [dbo].[Genre] ([GenreID], [GenreName]) VALUES (N'nhactrutinh', N'Nhạc Trữ Tình')
INSERT [dbo].[Singer] ([SingerID], [SingerName]) VALUES (N'asdsad', N'Nguyenasdasd')
INSERT [dbo].[Singer] ([SingerID], [SingerName]) VALUES (N'JohnLegend', N'John Legend')
INSERT [dbo].[Singer] ([SingerID], [SingerName]) VALUES (N'LeQuyen', N'Lệ Quyên')
INSERT [dbo].[Singer] ([SingerID], [SingerName]) VALUES (N'MLTR', N'Michael Learns To Rock')
INSERT [dbo].[Singer] ([SingerID], [SingerName]) VALUES (N'QuangLe', N'Quang Lê')
INSERT [dbo].[Singer] ([SingerID], [SingerName]) VALUES (N'RichardMarx', N'Richard Marx')
INSERT [dbo].[Singer] ([SingerID], [SingerName]) VALUES (N'SonTungMTP', N'Sơn Tùng - MTP')
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [DateUpload], [ViewsCount]) VALUES (N'7_-qnriI87I', N'Lạc Trôi', N'nhactre', CAST(N'2017-06-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [DateUpload], [ViewsCount]) VALUES (N'BjXCSOmuJxs', N'Sầu Tím Thiệp Hồng', N'nhactrutinh', CAST(N'2017-06-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [DateUpload], [ViewsCount]) VALUES (N'BSiv3VL0joE', N'Tình Lỡ', N'nhactrutinh', CAST(N'2017-06-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [DateUpload], [ViewsCount]) VALUES (N'kr8wPkdHFA0', N'All of Me', N'nhacnuocngoai', CAST(N'2017-06-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [DateUpload], [ViewsCount]) VALUES (N'ohyEwU8eeOg', N'Chắc Ai Đó Sẽ Về', N'nhactre', CAST(N'2017-06-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [DateUpload], [ViewsCount]) VALUES (N'pWGrXHlSEKU', N'25 Minutes', N'nhacnuocngoai', CAST(N'2017-06-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[Song] ([SongID], [SongName], [GenreID], [DateUpload], [ViewsCount]) VALUES (N'YDWDU0YWVVQ', N'Right Here Waiting', N'nhacnuocngoai', CAST(N'2017-06-05 00:00:00.000' AS DateTime), 0)
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'7_-qnriI87I', N'SonTungMTP')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'BjXCSOmuJxs', N'LeQuyen')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'BjXCSOmuJxs', N'QuangLe')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'BSiv3VL0joE', N'LeQuyen')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'kr8wPkdHFA0', N'JohnLegend')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'ohyEwU8eeOg', N'SonTungMTP')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'pWGrXHlSEKU', N'MLTR')
INSERT [dbo].[SongDetails] ([SongID], [SingerID]) VALUES (N'YDWDU0YWVVQ', N'RichardMarx')
