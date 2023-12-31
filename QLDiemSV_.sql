USE [master]
GO
/****** Object:  Database [QLDiemSV]    Script Date: 12/05/2022 12:38:56 ******/
CREATE DATABASE [QLDiemSV] 
GO
ALTER DATABASE [QLDiemSV] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDiemSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDiemSV] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLDiemSV] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLDiemSV] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLDiemSV] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLDiemSV] SET ARITHABORT OFF
GO
ALTER DATABASE [QLDiemSV] SET AUTO_CLOSE ON
GO
ALTER DATABASE [QLDiemSV] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLDiemSV] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLDiemSV] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLDiemSV] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLDiemSV] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLDiemSV] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLDiemSV] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLDiemSV] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLDiemSV] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLDiemSV] SET  ENABLE_BROKER
GO
ALTER DATABASE [QLDiemSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLDiemSV] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLDiemSV] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLDiemSV] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLDiemSV] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLDiemSV] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLDiemSV] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLDiemSV] SET  READ_WRITE
GO
ALTER DATABASE [QLDiemSV] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QLDiemSV] SET  MULTI_USER
GO
ALTER DATABASE [QLDiemSV] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLDiemSV] SET DB_CHAINING OFF
GO
USE [QLDiemSV]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/05/2022 12:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKhoa] [char](5) NOT NULL,
	[TenKhoa] [nvarchar](30) NOT NULL,
	[DChi] [nvarchar](100) NOT NULL,
	[DThoai] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HeDT]    Script Date: 12/05/2022 12:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HeDT](
	[MaHeDT] [char](5) NOT NULL,
	[TenHeDT] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHeDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/05/2022 12:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [char](5) NOT NULL,
	[TenMH] [nvarchar](30) NOT NULL,
	[SoTinChi] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 12/05/2022 12:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [char](5) NOT NULL,
	[TenLop] [nvarchar](30) NOT NULL,
	[MaKhoa] [char](5) NULL,
	[MaHeDT] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/05/2022 12:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [char](15) NOT NULL,
	[TenSV] [nvarchar](20) NULL,
	[GioiTinh] [bit] NULL,
	[NgSinh] [datetime] NULL,
	[QueQuan] [nvarchar](50) NULL,
	[MaLop] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Diem]    Script Date: 12/05/2022 12:38:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Diem](
	[MaSV] [char](15) NOT NULL,
	[MaMH] [char](5) NOT NULL,
	[HocKy] [int] NOT NULL,
	[DiemLan1] [int] NULL,
	[DiemLan2] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK__Lop__MaHeDT__0DAF0CB0]    Script Date: 12/05/2022 12:38:57 ******/
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([MaHeDT])
REFERENCES [dbo].[HeDT] ([MaHeDT])
GO
/****** Object:  ForeignKey [FK__Lop__MaKhoa__0CBAE877]    Script Date: 12/05/2022 12:38:57 ******/
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[Khoa] ([MaKhoa])
GO
/****** Object:  ForeignKey [FK__SinhVien__MaLop__1273C1CD]    Script Date: 12/05/2022 12:38:57 ******/
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
/****** Object:  ForeignKey [FK__Diem__MaMH__182C9B23]    Script Date: 12/05/2022 12:38:57 ******/
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
/****** Object:  ForeignKey [FK__Diem__MaSV__173876EA]    Script Date: 12/05/2022 12:38:57 ******/
ALTER TABLE [dbo].[Diem]  WITH CHECK ADD FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO


INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DChi], [DThoai]) VALUES (N'CK   ', N'Cõ Khí', N'Tầng 5 nhà B', N'043768888')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DChi], [DThoai]) VALUES (N'CNTT ', N'Công nghệ thông tin', N'Tầng 4 nhà B', N'043768888')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DChi], [DThoai]) VALUES (N'DT   ', N'Ðiện tử', N'Tằng 6 nhà B', N'043768888')
INSERT [dbo].[Khoa] ([MaKhoa], [TenKhoa], [DChi], [DThoai]) VALUES (N'KT   ', N'Kinh Tế', N'Tầng 2 nhà C', N'043768888')
/****** Object:  Table [dbo].[HeDT]    Script Date: 12/05/2022 13:00:11 ******/

GO
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'A01  ', N'Ðại Học')
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'B01  ', N'Cao Ðẳng')
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'C01  ', N'Trung Cấp')
INSERT [dbo].[HeDT] ([MaHeDT], [TenHeDT]) VALUES (N'D01  ', N'Công nhân')
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/05/2022 13:00:11 ******/

GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTinChi]) VALUES (N'CNPM ', N'Công Ngh? ph?n m?m', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTinChi]) VALUES (N'JV   ', N'Java', 6)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTinChi]) VALUES (N'Mang ', N'M?ng máy tính', 5)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTinChi]) VALUES (N'PTHT ', N'Phân tích h? th?ng', 4)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [SoTinChi]) VALUES (N'SQL  ', N'SQL', 5)
/****** Object:  Table [dbo].[Lop]    Script Date: 12/05/2022 13:00:11 ******/


GO
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT]) VALUES (N'KT1  ', N'Kinh tế 1', N'KT   ', N'A01  ')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT]) VALUES (N'MT1  ', N'MÁy Tính 1', N'CNTT ', N'A01  ')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT]) VALUES (N'MT2  ', N'MÁy Tính 2', N'CNTT ', N'A01  ')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT]) VALUES (N'MT3  ', N'MÁy Tính 3', N'CNTT ', N'A01  ')
INSERT [dbo].[Lop] ([MaLop], [TenLop], [MaKhoa], [MaHeDT]) VALUES (N'MT4  ', N'MÁy Tính 4', N'CNTT ', N'A01  ')
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/05/2022 13:00:11 ******/

GO
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060128     ', N'Nguyễn Minh Chín', 1, CAST(0x00007FB700000000 AS DateTime), N'Hai Duong', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060138     ', N'Nguyễn Minh Mýời', 1, CAST(0x00007FB700000000 AS DateTime), N'Ha Nam', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060148     ', N'Nguyễn Minh Mýời Một', 0, CAST(0x00007FB700000000 AS DateTime), N'Bac Giang', N'MT4  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060158     ', N'Nguyễn Minh Mýời Hai', 0, CAST(0x00007FB700000000 AS DateTime), N'Ha Noi', N'MT4  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060168     ', N'Nguyễn Minh Mýời Ba', 1, CAST(0x00007FB700000000 AS DateTime), N'Hai Duong', N'MT4  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060178     ', N'Nguyễn Minh Mýời Bốn', 1, CAST(0x00007FB700000000 AS DateTime), N'Nam Dinh', N'MT1  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060218     ', N'Nguyễn Minh Một', 1, CAST(0x00007FE900000000 AS DateTime), N'H?i Dýõng', N'MT3  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060318     ', N'Nguyễn Minh Hai', 1, CAST(0x00007F2100000000 AS DateTime), N'Nam Dinh', N'MT1  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060418     ', N'Nguyễn Minh Ba', 1, CAST(0x00007FB300000000 AS DateTime), N'Ninh Binh', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060518     ', N'Nguyễn Minh Bốn', 1, CAST(0x00007FB700000000 AS DateTime), N'Ninh Binh', N'MT1  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060618     ', N'Nguyễn Minh Nãm', 0, CAST(0x00007FB700000000 AS DateTime), N'Nam Dinh', N'MT3  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060718     ', N'Nguyễn Minh Sáu', 1, CAST(0x00007FB700000000 AS DateTime), N'Ha Noi', N'MT3  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060818     ', N'Nguyễn Minh Bảy', 1, CAST(0x00007FB700000000 AS DateTime), N'Ha Noi', N'MT3  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060918     ', N'Nguyễn Minh Tám', 1, CAST(0x00007FB700000000 AS DateTime), N'Hai Duong', N'MT2  ')
INSERT [dbo].[SinhVien] ([MaSV], [TenSV], [GioiTinh], [NgSinh], [QueQuan], [MaLop]) VALUES (N'0241060978     ', N'Nguyễn Minh Mýời Nãm', 1, CAST(0x00007FB700000000 AS DateTime), N'Nam Dinh', N'KT1  ')
/****** Object:  Table [dbo].[Diem]    Script Date: 12/05/2022 13:00:11 ******/

GO
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'CNPM ', 5, 8, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'JV   ', 5, 4, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'Mang ', 5, 4, 5)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'PTHT ', 4, 2, 5)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060218     ', N'SQL  ', 5, 7, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060318     ', N'Mang ', 5, 3, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060318     ', N'SQL  ', 4, 9, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060418     ', N'Mang ', 5, 4, 4)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060418     ', N'SQL  ', 5, 6, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'JV   ', 5, 4, 6)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'Mang ', 5, 8, NULL)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060518     ', N'SQL  ', 5, 4, 6)
INSERT [dbo].[Diem] ([MaSV], [MaMH], [HocKy], [DiemLan1], [DiemLan2]) VALUES (N'0241060618     ', N'SQL  ', 4, 8, NULL)
/****** Object:  ForeignKey [FK__Diem__MaMH__173876EA]    Script Date: 12/05/2022 13:00:11 ******/

