USE [Test]
GO
/****** Object:  StoredProcedure [dbo].[proc_DangKyLopHoc]    Script Date: 5/31/2017 11:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_DangKyLopHoc]
	@svID varchar,
	@classID varchar
as
begin
	declare @monhocID varchar

	select @monhocID = MonHoc.id
	from Lop, ThoiKhoaBieu, MonHoc
	where Lop.id = ThoiKhoaBieu.lopID and MonHoc.id = ThoiKhoaBieu.mhID and Lop.id = @classID

	if exists (
				select MonHoc.id
				from Lop, ThoiKhoaBieu, MonHoc
				where Lop.id = ThoiKhoaBieu.lopID and MonHoc.id = ThoiKhoaBieu.mhID and MonHoc.id = @monhocID
				)
		print 'Môn này bạn đã đăng ký rồi'
end
GO
/****** Object:  UserDefinedFunction [dbo].[fn_DangKyLopHoc]    Script Date: 5/31/2017 11:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[fn_DangKyLopHoc] (@svID varchar(50), @classID varchar(50))
returns int
as
begin
	declare @monhocID varchar;
	declare @dem int;
	declare @kq int;

	select @dem = Count(MonHoc.id)
	from SinhVien, ThamGia, Lop, ThoiKhoaBieu, MonHoc
	where SinhVien.id = ThamGia.svID and ThamGia.lopID = Lop.id and Lop.id = ThoiKhoaBieu.lopID 
			and MonHoc.id = ThoiKhoaBieu.mhID 
			and MonHoc.id = (	select MonHoc.id
								from Lop, ThoiKhoaBieu, MonHoc
								where Lop.id = ThoiKhoaBieu.lopID and MonHoc.id = ThoiKhoaBieu.mhID and Lop.id = @classID) 
			and SinhVien.id = @svID

	if @dem > 0
		set @kq = 0
	else
		set @kq = 1
	return @kq
end
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 5/31/2017 11:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 5/31/2017 11:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lop](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 5/31/2017 11:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhuTrach]    Script Date: 5/31/2017 11:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhuTrach](
	[gvID] [varchar](50) NOT NULL,
	[mhID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PhuTrach] PRIMARY KEY CLUSTERED 
(
	[gvID] ASC,
	[mhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 5/31/2017 11:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[id] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThamGia]    Script Date: 5/31/2017 11:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThamGia](
	[svID] [varchar](50) NOT NULL,
	[lopID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ThamGia] PRIMARY KEY CLUSTERED 
(
	[svID] ASC,
	[lopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThoiKhoaBieu]    Script Date: 5/31/2017 11:44:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiKhoaBieu](
	[lopID] [varchar](50) NOT NULL,
	[mhID] [varchar](50) NOT NULL,
	[gvID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ThoiKhoaBieu] PRIMARY KEY CLUSTERED 
(
	[lopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[GiaoVien] ([id], [name]) VALUES (N'bao', N'Bảo')
INSERT [dbo].[GiaoVien] ([id], [name]) VALUES (N'dao', N'Đạo')
INSERT [dbo].[GiaoVien] ([id], [name]) VALUES (N'doan', N'Đoan')
INSERT [dbo].[GiaoVien] ([id], [name]) VALUES (N'dung', N'Dũng')
INSERT [dbo].[GiaoVien] ([id], [name]) VALUES (N'khoan', N'Khoan')
INSERT [dbo].[GiaoVien] ([id], [name]) VALUES (N'khoi', N'Khôi')
INSERT [dbo].[Lop] ([id], [name]) VALUES (N'didong1', N'Di Động 1')
INSERT [dbo].[Lop] ([id], [name]) VALUES (N'didong2', N'Di Động 2')
INSERT [dbo].[Lop] ([id], [name]) VALUES (N'didong3', N'Di Động 3')
INSERT [dbo].[Lop] ([id], [name]) VALUES (N'web1', N'Web 1')
INSERT [dbo].[Lop] ([id], [name]) VALUES (N'web2', N'Web 2')
INSERT [dbo].[Lop] ([id], [name]) VALUES (N'web3', N'Web 3')
INSERT [dbo].[MonHoc] ([id], [name]) VALUES (N'android', N'Android')
INSERT [dbo].[MonHoc] ([id], [name]) VALUES (N'aspnet', N'ASP.NET')
INSERT [dbo].[MonHoc] ([id], [name]) VALUES (N'ios', N'IOS')
INSERT [dbo].[MonHoc] ([id], [name]) VALUES (N'java', N'Java')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'bao', N'ios')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'dao', N'android')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'dao', N'aspnet')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'dao', N'ios')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'dao', N'java')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'doan', N'aspnet')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'doan', N'ios')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'dung', N'ios')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'dung', N'java')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'khoan', N'android')
INSERT [dbo].[PhuTrach] ([gvID], [mhID]) VALUES (N'khoi', N'java')
INSERT [dbo].[SinhVien] ([id], [name]) VALUES (N'cuong', N'Cuong')
INSERT [dbo].[SinhVien] ([id], [name]) VALUES (N'duy', N'Duy')
INSERT [dbo].[SinhVien] ([id], [name]) VALUES (N'fang', N'Fang')
INSERT [dbo].[SinhVien] ([id], [name]) VALUES (N'nguyen', N'Nguyen')
INSERT [dbo].[SinhVien] ([id], [name]) VALUES (N'trung', N'Trung')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'cuong', N'didong2')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'cuong', N'web3')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'duy', N'didong1')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'duy', N'didong3')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'fang', N'web1')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'fang', N'web2')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'nguyen', N'didong1')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'nguyen', N'didong3')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'nguyen', N'web1')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'trung', N'didong2')
INSERT [dbo].[ThamGia] ([svID], [lopID]) VALUES (N'trung', N'didong3')
INSERT [dbo].[ThoiKhoaBieu] ([lopID], [mhID], [gvID]) VALUES (N'didong1', N'android', N'dao')
INSERT [dbo].[ThoiKhoaBieu] ([lopID], [mhID], [gvID]) VALUES (N'didong2', N'android', N'khoan')
INSERT [dbo].[ThoiKhoaBieu] ([lopID], [mhID], [gvID]) VALUES (N'didong3', N'ios', N'dung')
INSERT [dbo].[ThoiKhoaBieu] ([lopID], [mhID], [gvID]) VALUES (N'web1', N'aspnet', N'dao')
INSERT [dbo].[ThoiKhoaBieu] ([lopID], [mhID], [gvID]) VALUES (N'web2', N'java', N'bao')
INSERT [dbo].[ThoiKhoaBieu] ([lopID], [mhID], [gvID]) VALUES (N'web3', N'java', N'dao')
ALTER TABLE [dbo].[PhuTrach]  WITH CHECK ADD  CONSTRAINT [FK_PhuTrach_GiaoVien] FOREIGN KEY([gvID])
REFERENCES [dbo].[GiaoVien] ([id])
GO
ALTER TABLE [dbo].[PhuTrach] CHECK CONSTRAINT [FK_PhuTrach_GiaoVien]
GO
ALTER TABLE [dbo].[PhuTrach]  WITH CHECK ADD  CONSTRAINT [FK_PhuTrach_MonHoc] FOREIGN KEY([mhID])
REFERENCES [dbo].[MonHoc] ([id])
GO
ALTER TABLE [dbo].[PhuTrach] CHECK CONSTRAINT [FK_PhuTrach_MonHoc]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_Lop] FOREIGN KEY([lopID])
REFERENCES [dbo].[Lop] ([id])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_Lop]
GO
ALTER TABLE [dbo].[ThamGia]  WITH CHECK ADD  CONSTRAINT [FK_ThamGia_SinhVien] FOREIGN KEY([svID])
REFERENCES [dbo].[SinhVien] ([id])
GO
ALTER TABLE [dbo].[ThamGia] CHECK CONSTRAINT [FK_ThamGia_SinhVien]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_GiaoVien] FOREIGN KEY([gvID])
REFERENCES [dbo].[GiaoVien] ([id])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_GiaoVien]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_Lop] FOREIGN KEY([lopID])
REFERENCES [dbo].[Lop] ([id])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_Lop]
GO
ALTER TABLE [dbo].[ThoiKhoaBieu]  WITH CHECK ADD  CONSTRAINT [FK_ThoiKhoaBieu_MonHoc] FOREIGN KEY([mhID])
REFERENCES [dbo].[MonHoc] ([id])
GO
ALTER TABLE [dbo].[ThoiKhoaBieu] CHECK CONSTRAINT [FK_ThoiKhoaBieu_MonHoc]
GO
