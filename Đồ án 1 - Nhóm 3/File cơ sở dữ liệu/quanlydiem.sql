USE [master]
GO
/****** Object:  Database [Quanlydiem]    Script Date: 12/19/2022 7:56:02 PM ******/
CREATE DATABASE [Quanlydiem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyDiem', FILENAME = N'D:\Đồ án 1 - Nhóm 3\Programs\quanlysinhvien\database\QuanLyDiem.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyDiem_log', FILENAME = N'D:\Đồ án 1 - Nhóm 3\Programs\quanlysinhvien\database\QuanLyDiem_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Quanlydiem] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quanlydiem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quanlydiem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Quanlydiem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Quanlydiem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Quanlydiem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Quanlydiem] SET ARITHABORT OFF 
GO
ALTER DATABASE [Quanlydiem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Quanlydiem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Quanlydiem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Quanlydiem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Quanlydiem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Quanlydiem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Quanlydiem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Quanlydiem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Quanlydiem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Quanlydiem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Quanlydiem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Quanlydiem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Quanlydiem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Quanlydiem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Quanlydiem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Quanlydiem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Quanlydiem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Quanlydiem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Quanlydiem] SET  MULTI_USER 
GO
ALTER DATABASE [Quanlydiem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Quanlydiem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Quanlydiem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Quanlydiem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Quanlydiem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Quanlydiem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Quanlydiem] SET QUERY_STORE = OFF
GO
USE [Quanlydiem]
GO
/****** Object:  User [NT SERVICE\ReportServer$SQLEXPRESS]    Script Date: 12/19/2022 7:56:03 PM ******/
CREATE USER [NT SERVICE\ReportServer$SQLEXPRESS] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[tblGIANG_VIEN]    Script Date: 12/19/2022 7:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGIANG_VIEN](
	[MaGV] [nvarchar](10) NOT NULL,
	[TenGV] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Phone] [nvarchar](15) NULL,
	[Email] [nvarchar](20) NULL,
	[PhanLoaiGV] [nvarchar](20) NULL,
	[Anh] [bit] NULL,
 CONSTRAINT [PK_tblGIANG_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKET_QUA]    Script Date: 12/19/2022 7:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA](
	[MaSV] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
	[MaMon] [nvarchar](10) NULL,
	[DiemTB] [float] NULL,
	[DiemThiLan1] [float] NULL,
	[DiemThiLan2] [float] NULL,
	[DiemTongKet] [float] NULL,
	[HanhKiem] [nvarchar](20) NULL,
	[HocKi] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKET_QUA2]    Script Date: 12/19/2022 7:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA2](
	[MaSV] [nvarchar](10) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
	[TenMon] [nvarchar](50) NULL,
	[DiemThiLai] [nvarchar](50) NULL,
	[HocKi] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKET_QUA3]    Script Date: 12/19/2022 7:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA3](
	[MaSV] [nvarchar](10) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
	[TenMon] [nvarchar](50) NULL,
	[DiemHocLai] [float] NULL,
	[HocKi] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblKHOA]    Script Date: 12/19/2022 7:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKHOA](
	[MaKhoa] [nvarchar](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKHOA] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLOGIN]    Script Date: 12/19/2022 7:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOGIN](
	[TenDN] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLOGIN] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC,
	[MatKhau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLOP]    Script Date: 12/19/2022 7:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOP](
	[MaKhoa] [nvarchar](10) NULL,
	[MaLop] [nvarchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLOP] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMON]    Script Date: 12/19/2022 7:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMON](
	[MaMon] [nvarchar](10) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoDVHT] [int] NULL,
	[MaGV] [nvarchar](10) NULL,
	[HocKi] [nvarchar](10) NULL,
	[MaKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_tblMON_1] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSINH_VIEN]    Script Date: 12/19/2022 7:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSINH_VIEN](
	[MaSv] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](10) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblSINH_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaSv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'01006012', N'Lê Thị Bình', N'Nữ', N'0387219431', N'ltbinh@uneti.edu.vn', N'                    ', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'01007020', N'Trần Thị Minh Hải', N'Nữ', N'0988179239', N'ttmhai@uneti.edu.vn ', N'Thỉnh giảng', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'01013017', N'Nguyễn Anh Tuấn', N'Nam', N'0989842313', N'natuan@uneti.edu.vn ', N'Cơ hữu              ', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'01027011  ', N'Vũ Mỹ Hạnh', N'Nữ', N'0917600866', N'vmhanh@uneti.edu.vn', N'Cơ Hữu              ', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'01033029', N'Bùi Thị Nga', N'Nữ', N'0979053676', N'btnga@uneti.edu.vn  ', N'Cơ Hữu', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'02009009', N'Phạm Thị Thúy', N'Nữ', N'0327318533', N'ptthuy@uneti.edu.vn', N'Thỉnh giảng', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'02035008', N'Đoàn Thị Hiền', N'Nữ', N'0947099185', N'dthien@uneti.edu.vn ', N'Cơ Hữu', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'02062005', N'Cao Minh Đức', N'Nam', N'0943423122', N'cmduc@uneti.edu.vn', N'', NULL)
GO
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'CNTT1', N'Châu Hoàng Phong', N'TI14A11HN', N'DA1', 7, 9, NULL, 8.2, N'Xuất sắc', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'CNTT2', N'Đinh Thị Trang', N'TI14A11HN', N'DA1', 8, 9, NULL, 8.6, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'CNTT3', N'Trương Thị Thuận', N'TI14A11HN', N'DA1', 7, 7, NULL, 7, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'CNTT4', N'Trần Thị Kiều Trang', N'TI14A11HN', N'DA1', 6, 7, NULL, 6.6, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'CNTT6', N'Trần Hoàng Anh', N'TI14A1HN', N'TA4', 3, 2, 6, 4.8, N'Trung Bình', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'CNTT7', N'Vũ Thị Quỳnh Anh', N'TI14A1HN', N'TA4', 9, 8, NULL, 8.4, N'Tốt', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'DIEN1', N'Vũ Đức Dũng', N'DI14A1HN', N'KTLT', 4, 2, 2, 2.8, N'Yếu', 1, N'Học lại')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'DIEN2', N'Lê Thị Ngọc Bích', N'DI14A1HN', N'KTLT', 6, 8, NULL, 7.2, N'Khá ', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'DIEN3', N'Nguyễn Quốc Hưng', N'DT14A1HN', N'TBD', 9, 7, NULL, 7.8, N'Tốt', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'DIEN4', N'Lê Thị Tuyết Nga', N'DT14A1HN', N'TBD', 10, 9.5, NULL, 9.7, N'Xuất sắc', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'KT01', N'Đặng Thế Hưởng', N'KT14A1HN', N'GDTC1', 7, 7, NULL, 7, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'KT02', N'Trần Quỳnh Hương', N'KT14A1HN', N'GDTC1', 4, 3, 5, 4.6, N'Trung Bình', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'KT03', N'Nguyễn Đức Tùng', N'KT14A1HN', N'CNXHKH', 9, 8, NULL, 8.4, N'Tốt', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'KT04', N'Phạm Diệu Hương', N'KT14A1HN', N'CNXHKH', 8, 7, NULL, 7.4, N'Khá', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'QT01', N'Trần Hà Phương', N'QT14A1HN', N'TTQT', 7, 9, NULL, 8.2, N'Xuất sắc', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'QT02', N'Lưu Tuấn Nghĩa', N'QT14A1HN', N'TTQT', 6, 7, NULL, 6.6, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'QT03', N'Nguyễn Anh Thơ', N'QT14A2HN', N'QTBH', 7, 6, NULL, 6.4, N'Khá', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'QT04', N'Trương Tuấn Anh', N'QT14A2HN', N'QTBH', 4, 3, 3, 3.4, N'Yếu', 2, N'Học lại')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TN01', N'Bùi Thanh Trúc', N'TN14A1HN', N'TH', 6, 8, NULL, 7.2, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TN02', N'Nguyễn Quốc Trường', N'TN14A1HN', N'TH', 3, 2, 6, 4.8, N'Trung Bình', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TN03', N'Hoàng Thúy Quỳnh', N'TN14A2HN', N'TTHCM', 7, 9, NULL, 8.2, N'Tốt', 2, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TN04', N'Lê Quang Phúc', N'TN14A2HN', N'TTHCM', 9, 9, NULL, 9, N'Xuất sắc', 2, NULL)
GO
INSERT [dbo].[tblKET_QUA2] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemThiLai], [HocKi]) VALUES (N'DIEN1', N'Vũ Đức Dũng', N'DI14A1HN', N'Kỹ thuật Lập trình', N'2', N'1')
INSERT [dbo].[tblKET_QUA2] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemThiLai], [HocKi]) VALUES (N'CNTT6', N'Trần Hoàng Anh', N'TI14A1HN', N'Tiếng Anh 4', N'6    ', N'2')
INSERT [dbo].[tblKET_QUA2] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemThiLai], [HocKi]) VALUES (N'KT02', N'Trần Quỳnh Hương', N'KT14A1HN', N'Giáo dục thể chất 1', N'5', N'1')
INSERT [dbo].[tblKET_QUA2] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemThiLai], [HocKi]) VALUES (N'QT04', N'Trương Tuấn Anh', N'QT14A2HN', N'Quản trị bán hàng', N'3', N'2')
INSERT [dbo].[tblKET_QUA2] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemThiLai], [HocKi]) VALUES (N'TN02', N'Nguyễn Quốc Trường', N'TN14A1HN', N'Thuế', N'6', N'1')
GO
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'QT04', N'Trương Tuấn Anh', N'QT14A2HN', N'Quản trị bán hàng', 6, 2)
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'DIEN1', N'Vũ Đức Dũng', N'DI14A1HN', N'Kỹ Thuật Lập Trình', 7, 2)
GO
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'CNTT      ', N'Công nghệ thông tin             ')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'D', N'Điện-điện tử')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'K', N'Kế toán')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'QTKD', N'Quản Trị Kinh Doanh')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'TCNH', N'Tài Chính Ngân Hàng')
GO
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'chauhoangphong', N'123', N'Châu Hoàng Phong', N'Nam', N'0989 975 891', N'', N'Admin')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'trangdinh', N'123', N'Đinh Thị Trang', N'Nữ', N'0935 643 245', N'dttrang@sv.uneti.edu.vn', N'Member')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'trantrang', N'123', N'Trần Thị Kiều Trang', N'Nữ', N'0935 168 792', N'ttktrang@sv.uneti.edu.vn', N'Member')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'truongthuan', N'123', N'Trương Thị Thuận', N'Nữ', N'0372 941 475', N'ttthuan@sv.uneti.edu.vn', N'Member')
GO
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'D', N'DI14A1HN', N'ĐH Điện 14A1HN')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'D', N'DT14A1HN', N'ĐH Điện tử 14A1HN')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'K', N'KT14A1HN', N'ĐH Kế Toán 14A1HN')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'K', N'KT14A2HN', N'ĐH Kế Toán 14A2HN')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'QTKD', N'QT14A1HN', N'ĐH Quản Trị 14A1HN')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'QTKD', N'QT14A2HN', N'ĐH Quản Trị 14A2HN')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'TI14A11HN', N'ĐH Tin 14a11HN')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'TI14A1HN', N'ĐH Tin 14A1HN')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'TCNH', N'TN14A1HN', N'ĐH TCNH 14A1HN')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'TCNH', N'TN14A2HN', N'ĐH TCNH 14A2HN')
GO
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'CNXHKH', N'Chủ nghĩa Xã Hội', 2, N'02035008', N'2', N'K         ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'DA1', N'Đồ án 1', 3, N'01027011', N'1', N'CNTT      ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'GDTC1', N'Giáo dục thể chất 1', 1, N'01013017', N'1', N'K         ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'KTLT', N'Kỹ Thuật Lập Trình', 2, N'01027011', N'1', N'D         ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'QTBH', N'Quản trị bán hàng', 3, N'01007020', N'2', N'QTKD      ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'TA4', N'Tiếng Anh 4', 4, N'01033029', N'2', N'CNTT      ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'TBD', N'Trang bị điện, điện tử', 3, N'02062005', N'2', N'D         ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'TH', N'Thuế', 3, N'01007020', N'1', N'TCNH      ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'TTHCM', N'Tư tưởng Hồ Chí Minh', 2, N'02035008', N'2', N'TCNH      ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'TTQT', N'Thực tập Quản trị Nhân lực', 3, N'02009009', N'1', N'QTKD      ')
GO
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'CNTT1', N'Châu Hoàng Phong', N'30/01/2002', N'Nam', N'Hà Nội', N'TI14A11HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'CNTT2', N'Đinh Thị Trang', N'20/10/2002', N'Nữ', N'Ninh Bình', N'TI14A11HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'CNTT3', N'Trương Thị Thuận', N'29/06/2002', N'Nữ', N'Bắc Giang', N'TI14A11HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'CNTT4', N'Trần Thị Kiều Trang', N'30/09/2002', N'Nữ', N'Vĩnh Phúc', N'TI14A11HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'CNTT6', N'Trần Hoàng Anh', N'18/04/1997', N'Nam', N'Hà Nội', N'TI14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'CNTT7', N'Vũ Thị Quỳnh Anh', N'13/10/2002', N'Nữ', N'Ninh Bình', N'TI14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'DIEN1', N'Vũ Đức Dũng', N'12/05/2001', N'Nam', N'Hà Giang', N'DI14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'DIEN2', N'Lê Thị Ngọc Bích', N'11/01/2002', N'Nữ', N'Bắc Ninh', N'DI14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'DIEN3', N'Nguyễn Quốc Hưng', N'18/04/2002', N'Nam', N'Tuyên Quang', N'DT14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'DIEN4', N'Lê Thị Tuyết Nga', N'11/08/2002', N'Nữ', N'Hòa Bình', N'DT14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'KT01', N'Đặng Thế Hưởng', N'23/12/2002', N'Nam', N'Sơn La', N'KT14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'KT02', N'Trần Quỳnh Hương', N'27/05/2001', N'Nữ', N'Thái Bình', N'KT14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'KT03', N'Nguyễn Đức Tùng', N'09/12/2002', N'Nam', N'Hà Nội', N'KT14A2HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'KT04', N'Phạm Diệu Hương', N'23/04/2002', N'Nữ', N'Nghệ An', N'KT14A2HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'QT01', N'Trần Hà Phương', N'04/10/2002', N'Nữ', N'Ninh Bình', N'QT14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'QT02', N'Lưu Tuấn Nghĩa', N'22/06/2002', N'Nam', N'Hưng Yên', N'QT14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'QT03', N'Nguyễn Anh Thơ', N'06/04/2001', N'Nữ', N'Phú Thọ', N'QT14A2HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'QT04', N'Trương Tuấn Anh', N'07/03/2002', N'Nam', N'Yên Bái', N'QT14A2HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TN01', N'Bùi Thanh Trúc', N'15/09/2002', N'Nữ', N'Lai Châu', N'TN14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TN02', N'Nguyễn Quốc Trường', N'29/04/2000', N'Nam', N'Thái Nguyên', N'TN14A1HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TN03', N'Hoàng Thúy Quỳnh', N'12/08/2002', N'Nữ', N'Cao Bằng', N'TN14A2HN')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TN04', N'Lê Quang Phúc', N'19/02/2001', N'Nam', N'Điện Biên', N'TN14A2HN')
GO
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblMON] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblMON] ([MaMon])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblMON]
GO
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tblSINH_VIEN] ([MaSv])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN]
GO
ALTER TABLE [dbo].[tblLOP]  WITH CHECK ADD  CONSTRAINT [FK_tblLOP_tblKHOA] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[tblKHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[tblLOP] CHECK CONSTRAINT [FK_tblLOP_tblKHOA]
GO
ALTER TABLE [dbo].[tblMON]  WITH CHECK ADD  CONSTRAINT [FK_tblMON_tblGIANG_VIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[tblGIANG_VIEN] ([MaGV])
GO
ALTER TABLE [dbo].[tblMON] CHECK CONSTRAINT [FK_tblMON_tblGIANG_VIEN]
GO
ALTER TABLE [dbo].[tblSINH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_tblSINH_VIEN_tblLOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[tblLOP] ([MaLop])
GO
ALTER TABLE [dbo].[tblSINH_VIEN] CHECK CONSTRAINT [FK_tblSINH_VIEN_tblLOP]
GO
USE [master]
GO
ALTER DATABASE [Quanlydiem] SET  READ_WRITE 
GO
