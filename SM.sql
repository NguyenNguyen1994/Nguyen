USE [SchoolManagement]
GO
/****** Object:  Table [dbo].[Assignment_Class]    Script Date: 6/1/2017 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Assignment_Class](
	[ClassID] [varchar](50) NOT NULL,
	[TeacherID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Work_1] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Assignment_Discipline]    Script Date: 6/1/2017 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Assignment_Discipline](
	[ADID] [varchar](50) NOT NULL,
	[TeacherID] [varchar](50) NOT NULL,
	[DisciplineID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Assignment_Discipline] PRIMARY KEY CLUSTERED 
(
	[ADID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Class]    Script Date: 6/1/2017 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Class](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 6/1/2017 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Discipline](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NumOfLectures] [int] NOT NULL,
	[NumOfExcercises] [int] NOT NULL,
 CONSTRAINT [PK_Discipline] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 6/1/2017 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule](
	[ADID] [varchar](50) NOT NULL,
	[StudentID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Schedule_1] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC,
	[ADID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/1/2017 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ClassID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 6/1/2017 10:45:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'bao_cautruc', N'bao', N'cautruc')
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'bao_nhapmon', N'bao', N'nhapmon')
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'dao_android', N'dao', N'android')
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'dao_web', N'dao', N'web')
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'doan_kientruc', N'doan', N'kientruc')
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'doan_wifi', N'doan', N'wifi')
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'dung_web', N'dung', N'web')
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'khoan_kientruc', N'khoan', N'kientruc')
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'khoi_cautruc', N'khoi', N'cautruc')
INSERT [dbo].[Assignment_Discipline] ([ADID], [TeacherID], [DisciplineID]) VALUES (N'khoi_nhapmon', N'khoi', N'nhapmon')
INSERT [dbo].[Class] ([ID], [Name]) VALUES (N'it01', N'IT 01')
INSERT [dbo].[Class] ([ID], [Name]) VALUES (N'it02', N'IT 02')
INSERT [dbo].[Class] ([ID], [Name]) VALUES (N'it03', N'IT 03')
INSERT [dbo].[Discipline] ([ID], [Name], [NumOfLectures], [NumOfExcercises]) VALUES (N'android   ', N'Android', 4, 2)
INSERT [dbo].[Discipline] ([ID], [Name], [NumOfLectures], [NumOfExcercises]) VALUES (N'cautruc   ', N'Cấu Trúc', 4, 2)
INSERT [dbo].[Discipline] ([ID], [Name], [NumOfLectures], [NumOfExcercises]) VALUES (N'kientruc  ', N'Kiến Trúc', 4, 2)
INSERT [dbo].[Discipline] ([ID], [Name], [NumOfLectures], [NumOfExcercises]) VALUES (N'nhapmon   ', N'Nhập Môn', 4, 2)
INSERT [dbo].[Discipline] ([ID], [Name], [NumOfLectures], [NumOfExcercises]) VALUES (N'web       ', N'Web', 4, 2)
INSERT [dbo].[Discipline] ([ID], [Name], [NumOfLectures], [NumOfExcercises]) VALUES (N'wifi      ', N'Wifi', 3, 1)
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'khoan_kientruc', N'cuong')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'khoi_cautruc', N'cuong')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'bao_nhapmon', N'duy')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'dung_web', N'duy')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'khoan_kientruc', N'duy')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'dao_android', N'fang')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'doan_wifi', N'fang')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'dung_web', N'fang')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'dao_android', N'nguyen')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'dao_web', N'nguyen')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'doan_wifi', N'nguyen')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'bao_cautruc', N'trung')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'bao_nhapmon', N'trung')
INSERT [dbo].[Schedule] ([ADID], [StudentID]) VALUES (N'doan_kientruc', N'trung')
INSERT [dbo].[Student] ([ID], [Name], [ClassID]) VALUES (N'cuong     ', N'Cường', N'it01')
INSERT [dbo].[Student] ([ID], [Name], [ClassID]) VALUES (N'duy       ', N'Duy', N'it03')
INSERT [dbo].[Student] ([ID], [Name], [ClassID]) VALUES (N'fang      ', N'Fang', N'it02')
INSERT [dbo].[Student] ([ID], [Name], [ClassID]) VALUES (N'nguyen    ', N'Nguyen', N'it01')
INSERT [dbo].[Student] ([ID], [Name], [ClassID]) VALUES (N'trung     ', N'Trung', N'it02')
INSERT [dbo].[Teacher] ([ID], [Name]) VALUES (N'bao       ', N'Bảo')
INSERT [dbo].[Teacher] ([ID], [Name]) VALUES (N'dao       ', N'Đạo')
INSERT [dbo].[Teacher] ([ID], [Name]) VALUES (N'doan      ', N'Đoan')
INSERT [dbo].[Teacher] ([ID], [Name]) VALUES (N'dung      ', N'Dũng')
INSERT [dbo].[Teacher] ([ID], [Name]) VALUES (N'khoan     ', N'Khoan')
INSERT [dbo].[Teacher] ([ID], [Name]) VALUES (N'khoi      ', N'Khôi')
ALTER TABLE [dbo].[Assignment_Class]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ID])
GO
ALTER TABLE [dbo].[Assignment_Class] CHECK CONSTRAINT [FK_Assignment_Class]
GO
ALTER TABLE [dbo].[Assignment_Class]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
GO
ALTER TABLE [dbo].[Assignment_Class] CHECK CONSTRAINT [FK_Assignment_Teacher]
GO
ALTER TABLE [dbo].[Assignment_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Discipline_Discipline] FOREIGN KEY([DisciplineID])
REFERENCES [dbo].[Discipline] ([ID])
GO
ALTER TABLE [dbo].[Assignment_Discipline] CHECK CONSTRAINT [FK_Assignment_Discipline_Discipline]
GO
ALTER TABLE [dbo].[Assignment_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Discipline_Teacher] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teacher] ([ID])
GO
ALTER TABLE [dbo].[Assignment_Discipline] CHECK CONSTRAINT [FK_Assignment_Discipline_Teacher]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Assignment_Discipline] FOREIGN KEY([ADID])
REFERENCES [dbo].[Assignment_Discipline] ([ADID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Assignment_Discipline]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([ID])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Class]
GO
