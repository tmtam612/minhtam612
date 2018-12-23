USE [master]
GO
/****** Object:  Database [QLVeSo]    Script Date: 22/12/2018 3:27:53 PM ******/
CREATE DATABASE [QLVeSo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLVeSo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLVeSo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLVeSo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\QLVeSo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [QLVeSo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLVeSo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLVeSo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLVeSo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLVeSo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLVeSo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLVeSo] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLVeSo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLVeSo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLVeSo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLVeSo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLVeSo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLVeSo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLVeSo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLVeSo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLVeSo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLVeSo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLVeSo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLVeSo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLVeSo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLVeSo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLVeSo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLVeSo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLVeSo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLVeSo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLVeSo] SET  MULTI_USER 
GO
ALTER DATABASE [QLVeSo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLVeSo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLVeSo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLVeSo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLVeSo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLVeSo] SET QUERY_STORE = OFF
GO
USE [QLVeSo]
GO
/****** Object:  Table [dbo].[DaiLy]    Script Date: 22/12/2018 3:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DaiLy](
	[MaDaiLy] [varchar](10) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDaiLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKy]    Script Date: 22/12/2018 3:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKy](
	[MaDangKy] [nvarchar](50) NOT NULL,
	[MaDaiLy] [varchar](10) NOT NULL,
	[MaLoaiVeSo] [varchar](10) NOT NULL,
	[NgayDangKy] [date] NULL,
	[NgayPhanPhoi] [date] NULL,
	[SoLuong] [int] NULL,
	[TinhTrang] [bit] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDangKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giai]    Script Date: 22/12/2018 3:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giai](
	[MaGiai] [varchar](10) NOT NULL,
	[GiaiThuong] [decimal](18, 0) NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KetQuaXoSo]    Script Date: 22/12/2018 3:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetQuaXoSo](
	[MaKetQua] [varchar](10) NOT NULL,
	[MaLoaiVeSo] [varchar](10) NOT NULL,
	[Ngay] [date] NULL,
	[SoTrung] [varchar](20) NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKetQua] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiVeSo]    Script Date: 22/12/2018 3:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiVeSo](
	[MaLoaiVeSo] [varchar](10) NOT NULL,
	[Tinh] [nvarchar](50) NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiVeSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanPhoi]    Script Date: 22/12/2018 3:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanPhoi](
	[MaPhanPhoi] [nvarchar](50) NOT NULL,
	[MaDaiLy] [varchar](10) NOT NULL,
	[MaLoaiVeSo] [varchar](10) NOT NULL,
	[NgayPhanPhoi] [date] NULL,
	[SoLuongGiao] [int] NULL,
	[SoLuongBan] [int] NULL,
	[TiLe] [float] NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuChi]    Script Date: 22/12/2018 3:27:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuChi](
	[MaPhieuChi] [varchar](50) NOT NULL,
	[Ngay] [date] NULL,
	[TongTien] [decimal](18, 0) NULL,
	[TinhTrang] [bit] NULL,
 CONSTRAINT [PK_PhieuChi] PRIMARY KEY CLUSTERED 
(
	[MaPhieuChi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuThu]    Script Date: 22/12/2018 3:27:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuThu](
	[MaPhieuThu] [varchar](10) NOT NULL,
	[MaDaiLy] [varchar](10) NOT NULL,
	[Ngay] [date] NULL,
	[TienThanhToan] [decimal](18, 0) NULL,
	[SoTienThuDuoc] [decimal](18, 0) NULL,
	[CongNo] [decimal](18, 0) NULL,
	[HoaHong] [int] NULL,
	[GiaVe] [decimal](18, 0) NULL,
	[TinhTrang] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DaiLy] ([MaDaiLy], [Ten], [DiaChi], [DienThoai], [TinhTrang]) VALUES (N'DL01', N'Đại lý Vạn Thắng', N'26 Nguuyễn Trãi', N'0935263748', 1)
INSERT [dbo].[DaiLy] ([MaDaiLy], [Ten], [DiaChi], [DienThoai], [TinhTrang]) VALUES (N'DL02', N'Đại lý Tấn Tài', N'73 An Dương Vương', N'0943728574', 1)
INSERT [dbo].[DaiLy] ([MaDaiLy], [Ten], [DiaChi], [DienThoai], [TinhTrang]) VALUES (N'DL03', N'Đại lý Phúc Lộc Thọ', N'94 Kinh Dương Vương', N'0912345673', 1)
INSERT [dbo].[DaiLy] ([MaDaiLy], [Ten], [DiaChi], [DienThoai], [TinhTrang]) VALUES (N'DL04', N'Đại lý Vĩnh Niên', N'122 Vĩnh Viễn', N'0962835263', 1)
INSERT [dbo].[DaiLy] ([MaDaiLy], [Ten], [DiaChi], [DienThoai], [TinhTrang]) VALUES (N'DL05', N'Đại lý Hạnh Phúc', N'12 Hoà Hảo', N'0946372839', 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK01', N'DL01', N'VSBT', CAST(N'2018-04-02' AS Date), CAST(N'2018-04-02' AS Date), 50, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK02', N'DL02', N'VSBT', CAST(N'2018-06-01' AS Date), CAST(N'2018-06-01' AS Date), 80, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK03', N'DL03', N'VSBT', CAST(N'2018-02-02' AS Date), CAST(N'2018-02-02' AS Date), 100, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK04', N'DL04', N'VSBT', CAST(N'2018-03-06' AS Date), CAST(N'2018-07-02' AS Date), 150, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK05', N'DL01', N'VSBT', CAST(N'2018-12-20' AS Date), CAST(N'2018-12-20' AS Date), 20, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK06', N'DL01', N'VSBT', CAST(N'2018-02-23' AS Date), CAST(N'2018-02-25' AS Date), 100, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK07', N'DL02', N'VSBT', CAST(N'2018-03-22' AS Date), CAST(N'2018-03-25' AS Date), 150, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK08', N'DL02', N'VSBT', CAST(N'2018-04-21' AS Date), CAST(N'2018-04-25' AS Date), 100, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK09', N'DL03', N'VSBT', CAST(N'2018-05-26' AS Date), CAST(N'2018-05-27' AS Date), 150, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK10', N'DL05', N'VSBT', CAST(N'2018-06-27' AS Date), CAST(N'2018-06-28' AS Date), 200, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK11', N'DL02', N'VSBT', CAST(N'2018-07-29' AS Date), CAST(N'2018-07-30' AS Date), 300, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK12', N'DL02', N'VSBT', CAST(N'2018-08-23' AS Date), CAST(N'2018-08-27' AS Date), 200, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK13', N'DL01', N'VSBH', CAST(N'2018-12-18' AS Date), CAST(N'2018-12-19' AS Date), 60, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK14', N'DL01', N'VSBH', CAST(N'2018-12-18' AS Date), CAST(N'2018-12-19' AS Date), 40, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK15', N'DL01', N'VSBH', CAST(N'2018-12-22' AS Date), CAST(N'2018-12-19' AS Date), 40, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK16', N'DL02', N'VSBL', CAST(N'2018-12-20' AS Date), CAST(N'2018-12-20' AS Date), 100, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK17', N'DL03', N'VSBL', CAST(N'2018-12-20' AS Date), CAST(N'2018-12-20' AS Date), 150, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK18', N'DL04', N'VSLA', CAST(N'2018-12-20' AS Date), CAST(N'2018-12-20' AS Date), 50, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK19', N'DL01', N'VSBH', CAST(N'2018-12-20' AS Date), CAST(N'2018-12-20' AS Date), 50, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK20', N'DL03', N'VSBT', CAST(N'2018-12-20' AS Date), CAST(N'2018-12-20' AS Date), 50, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK21', N'DL05', N'VSVT', CAST(N'2018-12-21' AS Date), CAST(N'2018-12-21' AS Date), 250, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK22', N'DL01', N'VSVT', CAST(N'2018-12-21' AS Date), CAST(N'2018-12-21' AS Date), 200, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK23', N'DL02', N'VSTA', CAST(N'2018-12-21' AS Date), CAST(N'2018-12-21' AS Date), 100, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK24', N'DL03', N'VSBH', CAST(N'2018-12-21' AS Date), CAST(N'2018-12-21' AS Date), 200, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK25', N'DL04', N'VSPR', CAST(N'2018-12-21' AS Date), CAST(N'2018-12-21' AS Date), 200, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK26', N'DL05', N'VSPR', CAST(N'2018-12-21' AS Date), CAST(N'2018-12-21' AS Date), 100, 0, 1)
INSERT [dbo].[DangKy] ([MaDangKy], [MaDaiLy], [MaLoaiVeSo], [NgayDangKy], [NgayPhanPhoi], [SoLuong], [TinhTrang], [Status]) VALUES (N'DK27', N'DL01', N'VSBH', CAST(N'2018-12-22' AS Date), CAST(N'2018-12-22' AS Date), 100, 0, 1)
INSERT [dbo].[Giai] ([MaGiai], [GiaiThuong], [TinhTrang]) VALUES (N'G01', CAST(30000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Giai] ([MaGiai], [GiaiThuong], [TinhTrang]) VALUES (N'G02', CAST(1000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Giai] ([MaGiai], [GiaiThuong], [TinhTrang]) VALUES (N'G03', CAST(200000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Giai] ([MaGiai], [GiaiThuong], [TinhTrang]) VALUES (N'G04', CAST(100000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Giai] ([MaGiai], [GiaiThuong], [TinhTrang]) VALUES (N'GDB', CAST(1500000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[Giai] ([MaGiai], [GiaiThuong], [TinhTrang]) VALUES (N'GKK', CAST(6000000 AS Decimal(18, 0)), 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ01', N'VSBH', CAST(N'2018-12-21' AS Date), N'772829', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ02', N'VSBL', CAST(N'2018-12-21' AS Date), N'751045', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ03', N'VSBT', CAST(N'2018-12-21' AS Date), N'426634', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ04', N'VSCL', CAST(N'2018-12-21' AS Date), N'307723', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ05', N'VSLA', CAST(N'2018-12-21' AS Date), N'356412', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ06', N'VSCT', CAST(N'2018-12-21' AS Date), N'155915', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ07', N'VSCM', CAST(N'2018-12-21' AS Date), N'036195', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ08', N'VSLX', CAST(N'2018-12-21' AS Date), N'307051', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ09', N'VSPR', CAST(N'2018-12-21' AS Date), N'999933', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ10', N'VSVL', CAST(N'2018-12-21' AS Date), N'362047', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ11', N'VSVT', CAST(N'2018-12-21' AS Date), N'745539', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ12', N'VSPT', CAST(N'2018-12-21' AS Date), N'984087', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ13', N'VSRG', CAST(N'2018-12-21' AS Date), N'707602', 1)
INSERT [dbo].[KetQuaXoSo] ([MaKetQua], [MaLoaiVeSo], [Ngay], [SoTrung], [TinhTrang]) VALUES (N'KQ14', N'VSTA', CAST(N'2018-12-21' AS Date), N'515234', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSBH', N'Biên Hòa', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSBL', N'Bạc Liêu', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSBT', N'Bến Tre', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSCL', N'Cao Lãnh', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSCM', N'Cà Mau', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSCT', N'Cần Thơ', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSLA', N'Long An', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSLX', N'Long Xuyên', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSPR', N'Phan Rang', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSPT', N'Phan Thiết', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSRG', N'Rạch giá', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSTA', N'Tân An', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSVL', N'Vĩnh Long', 1)
INSERT [dbo].[LoaiVeSo] ([MaLoaiVeSo], [Tinh], [TinhTrang]) VALUES (N'VSVT', N'Vũng Tàu', 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP01', N'DL01', N'VSBT', CAST(N'2018-04-02' AS Date), 50, 50, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP02', N'DL02', N'VSBT', CAST(N'2018-06-01' AS Date), 80, 80, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP03', N'DL03', N'VSBT', CAST(N'2018-02-02' AS Date), 100, 80, 0.8, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP04', N'DL04', N'VSBT', CAST(N'2018-07-02' AS Date), 130, 100, 0.77, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP05', N'DL01', N'VSBT', CAST(N'2018-12-20' AS Date), 140, 120, 0.86, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP06', N'DL01', N'VSBT', CAST(N'2018-02-25' AS Date), 95, 95, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP07', N'DL02', N'VSBT', CAST(N'2018-03-25' AS Date), 190, 190, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP08', N'DL02', N'VSBT', CAST(N'2018-04-25' AS Date), 180, 150, 0.83, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP09', N'DL03', N'VSBT', CAST(N'2018-05-27' AS Date), 250, 200, 0.8, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP10', N'DL05', N'VSBT', CAST(N'2018-06-28' AS Date), 80, 50, 0.63, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP11', N'DL02', N'VSBT', CAST(N'2018-07-30' AS Date), 70, 70, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP12', N'DL02', N'VSBT', CAST(N'2018-08-27' AS Date), 135, 100, 0.74, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP13', N'DL01', N'VSBH', CAST(N'2018-12-18' AS Date), 57, 50, 0.88, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP14', N'DL01', N'VSBH', CAST(N'2018-12-18' AS Date), 38, 30, 0.79, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP15', N'DL01', N'VSBH', CAST(N'2018-12-19' AS Date), 57, 57, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP16', N'DL03', N'VSCT', CAST(N'2018-12-21' AS Date), 300, 250, 0.83, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP17', N'DL01', N'VSVT', CAST(N'2018-12-21' AS Date), 183, 180, 0.98360655737704916, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP18', N'DL02', N'VSTA', CAST(N'2018-12-21' AS Date), 91, 91, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP19', N'DL03', N'VSBH', CAST(N'2018-12-21' AS Date), 162, 150, 0.92592592592592593, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP20', N'DL04', N'VSPR', CAST(N'2018-12-21' AS Date), 154, 150, 0.974025974025974, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP21', N'DL05', N'VSPR', CAST(N'2018-12-21' AS Date), 63, 63, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP22', N'DL01', N'VSBH', CAST(N'2018-12-22' AS Date), 95, 90, 0.94736842105263153, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP23', N'DL01', N'VSBH', CAST(N'2018-01-16' AS Date), 200, 100, 0.5, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP24', N'DL02', N'VSTA', CAST(N'2018-02-16' AS Date), 100, 90, 0.9, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP25', N'DL03', N'VSTA', CAST(N'2018-01-20' AS Date), 300, 300, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP26', N'DL04', N'VSTA', CAST(N'2018-02-27' AS Date), 100, 100, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP27', N'DL05', N'VSVT', CAST(N'2018-03-30' AS Date), 250, 200, 0.8, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP28', N'DL01', N'VSVT', CAST(N'2018-03-31' AS Date), 350, 300, 0.86, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP29', N'DL02', N'VSVT', CAST(N'2018-04-01' AS Date), 250, 200, 0.8, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP30', N'DL03', N'VSVT', CAST(N'2018-05-24' AS Date), 200, 100, 0.5, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP31', N'DL04', N'VSVT', CAST(N'2018-05-25' AS Date), 100, 100, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP32', N'DL05', N'VSVT', CAST(N'2018-05-29' AS Date), 70, 70, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP33', N'DL01', N'VSVT', CAST(N'2018-06-20' AS Date), 90, 90, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP34', N'DL02', N'VSVT', CAST(N'2018-07-20' AS Date), 50, 50, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP35', N'DL03', N'VSVT', CAST(N'2018-08-11' AS Date), 50, 50, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP36', N'DL04', N'VSVT', CAST(N'2018-07-29' AS Date), 100, 90, 0.9, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP37', N'DL05', N'VSVT', CAST(N'2018-08-05' AS Date), 200, 150, 0.75, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP38', N'DL01', N'VSVT', CAST(N'2018-08-04' AS Date), 200, 150, 0.75, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP39', N'DL02', N'VSVT', CAST(N'2018-09-04' AS Date), 300, 200, 0.67, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP40', N'DL03', N'VSVT', CAST(N'2018-09-17' AS Date), 500, 300, 0.6, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP41', N'DL04', N'VSVT', CAST(N'2018-10-09' AS Date), 300, 200, 0.67, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP42', N'DL05', N'VSVT', CAST(N'2018-10-05' AS Date), 100, 100, 1, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP43', N'DL01', N'VSVT', CAST(N'2018-11-25' AS Date), 150, 100, 0.67, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP44', N'DL02', N'VSVT', CAST(N'2018-11-22' AS Date), 150, 100, 0.67, 1)
INSERT [dbo].[PhanPhoi] ([MaPhanPhoi], [MaDaiLy], [MaLoaiVeSo], [NgayPhanPhoi], [SoLuongGiao], [SoLuongBan], [TiLe], [TinhTrang]) VALUES (N'PP45', N'DL03', N'VSVT', CAST(N'2018-06-10' AS Date), 300, 250, 0.83, 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC01', CAST(N'2018-12-20' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC02', CAST(N'2018-12-20' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC03', CAST(N'2018-12-20' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC04', CAST(N'2018-12-20' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC05', CAST(N'2018-12-20' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC06', CAST(N'2018-12-21' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC07', CAST(N'2018-12-21' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC08', CAST(N'2018-01-16' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC09', CAST(N'2018-02-16' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC10', CAST(N'2018-01-20' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC11', CAST(N'2018-02-27' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC12', CAST(N'2018-03-30' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC13', CAST(N'2018-03-31' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC14', CAST(N'2018-04-01' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC15', CAST(N'2018-05-24' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC16', CAST(N'2018-05-25' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC17', CAST(N'2018-05-29' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC18', CAST(N'2018-06-20' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC19', CAST(N'2018-07-20' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC20', CAST(N'2018-08-11' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC21', CAST(N'2018-07-29' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC22', CAST(N'2018-08-05' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC23', CAST(N'2018-08-04' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC24', CAST(N'2018-09-04' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC25', CAST(N'2018-09-17' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC26', CAST(N'2018-10-09' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC27', CAST(N'2018-10-05' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC28', CAST(N'2018-11-25' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC29', CAST(N'2018-11-22' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuChi] ([MaPhieuChi], [Ngay], [TongTien], [TinhTrang]) VALUES (N'PC30', CAST(N'2018-06-10' AS Date), CAST(50000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT01', N'DL01', CAST(N'2018-12-21' AS Date), CAST(1620000 AS Decimal(18, 0)), CAST(1500000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT02', N'DL02', CAST(N'2018-12-21' AS Date), CAST(819000 AS Decimal(18, 0)), CAST(819000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT03', N'DL03', CAST(N'2018-12-21' AS Date), CAST(1350000 AS Decimal(18, 0)), CAST(1200000 AS Decimal(18, 0)), CAST(150000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT04', N'DL04', CAST(N'2018-12-21' AS Date), CAST(1350000 AS Decimal(18, 0)), CAST(1300000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT05', N'DL05', CAST(N'2018-12-21' AS Date), CAST(567000 AS Decimal(18, 0)), CAST(550000 AS Decimal(18, 0)), CAST(17000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT06', N'DL01', CAST(N'2018-12-22' AS Date), CAST(1800000 AS Decimal(18, 0)), CAST(550000 AS Decimal(18, 0)), CAST(1250000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT07', N'DL02', CAST(N'2018-12-22' AS Date), CAST(910000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), CAST(410000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT08', N'DL01', CAST(N'2018-01-17' AS Date), CAST(1200000 AS Decimal(18, 0)), CAST(1000000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT09', N'DL02', CAST(N'2018-02-17' AS Date), CAST(1000000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT10', N'DL03', CAST(N'2018-01-21' AS Date), CAST(2000000 AS Decimal(18, 0)), CAST(1500000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT11', N'DL04', CAST(N'2018-02-28' AS Date), CAST(3000000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT12', N'DL05', CAST(N'2018-03-31' AS Date), CAST(1500000 AS Decimal(18, 0)), CAST(1000000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT13', N'DL01', CAST(N'2018-04-01' AS Date), CAST(2500000 AS Decimal(18, 0)), CAST(2250000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT14', N'DL02', CAST(N'2018-04-02' AS Date), CAST(3500000 AS Decimal(18, 0)), CAST(3000000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT15', N'DL03', CAST(N'2018-05-25' AS Date), CAST(500000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT16', N'DL04', CAST(N'2018-05-26' AS Date), CAST(600000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT17', N'DL05', CAST(N'2018-05-30' AS Date), CAST(400000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT18', N'DL01', CAST(N'2018-06-21' AS Date), CAST(500000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT19', N'DL02', CAST(N'2018-07-21' AS Date), CAST(750000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT20', N'DL03', CAST(N'2018-08-12' AS Date), CAST(250000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT21', N'DL04', CAST(N'2018-07-30' AS Date), CAST(900000 AS Decimal(18, 0)), CAST(900000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT22', N'DL05', CAST(N'2018-08-06' AS Date), CAST(320000 AS Decimal(18, 0)), CAST(320000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT23', N'DL01', CAST(N'2018-08-05' AS Date), CAST(500000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT24', N'DL02', CAST(N'2018-09-05' AS Date), CAST(550000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT25', N'DL03', CAST(N'2018-09-18' AS Date), CAST(600000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT26', N'DL04', CAST(N'2018-10-10' AS Date), CAST(700000 AS Decimal(18, 0)), CAST(500000 AS Decimal(18, 0)), CAST(200000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT27', N'DL05', CAST(N'2018-10-06' AS Date), CAST(250000 AS Decimal(18, 0)), CAST(250000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT28', N'DL01', CAST(N'2018-11-26' AS Date), CAST(100000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT29', N'DL02', CAST(N'2018-11-23' AS Date), CAST(470000 AS Decimal(18, 0)), CAST(420000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
INSERT [dbo].[PhieuThu] ([MaPhieuThu], [MaDaiLy], [Ngay], [TienThanhToan], [SoTienThuDuoc], [CongNo], [HoaHong], [GiaVe], [TinhTrang]) VALUES (N'PT30', N'DL03', CAST(N'2018-06-11' AS Date), CAST(612000 AS Decimal(18, 0)), CAST(612000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), 10, CAST(10000 AS Decimal(18, 0)), 1)
ALTER TABLE [dbo].[DangKy]  WITH CHECK ADD  CONSTRAINT [FK_DangKy_DaiLy_IdDaiLy] FOREIGN KEY([MaDaiLy])
REFERENCES [dbo].[DaiLy] ([MaDaiLy])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DangKy_DaiLy_IdDaiLy]
GO
ALTER TABLE [dbo].[DangKy]  WITH CHECK ADD  CONSTRAINT [FK_DangKy_LoaiVeSo_IdLoaiVeSo] FOREIGN KEY([MaLoaiVeSo])
REFERENCES [dbo].[LoaiVeSo] ([MaLoaiVeSo])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DangKy_LoaiVeSo_IdLoaiVeSo]
GO
ALTER TABLE [dbo].[KetQuaXoSo]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaXoSo_LoaiVeSo_IdLoaiVeSo] FOREIGN KEY([MaLoaiVeSo])
REFERENCES [dbo].[LoaiVeSo] ([MaLoaiVeSo])
GO
ALTER TABLE [dbo].[KetQuaXoSo] CHECK CONSTRAINT [FK_KetQuaXoSo_LoaiVeSo_IdLoaiVeSo]
GO
ALTER TABLE [dbo].[PhanPhoi]  WITH CHECK ADD  CONSTRAINT [FK_PhanPhoi_DaiLy_IdDaiLy] FOREIGN KEY([MaDaiLy])
REFERENCES [dbo].[DaiLy] ([MaDaiLy])
GO
ALTER TABLE [dbo].[PhanPhoi] CHECK CONSTRAINT [FK_PhanPhoi_DaiLy_IdDaiLy]
GO
ALTER TABLE [dbo].[PhanPhoi]  WITH CHECK ADD  CONSTRAINT [FK_PhanPhoi_LoaiVeSo_IdLoaiVeSo] FOREIGN KEY([MaLoaiVeSo])
REFERENCES [dbo].[LoaiVeSo] ([MaLoaiVeSo])
GO
ALTER TABLE [dbo].[PhanPhoi] CHECK CONSTRAINT [FK_PhanPhoi_LoaiVeSo_IdLoaiVeSo]
GO
ALTER TABLE [dbo].[PhieuThu]  WITH CHECK ADD  CONSTRAINT [FK_PhieuThu_DaiLy_IdDaiLy] FOREIGN KEY([MaDaiLy])
REFERENCES [dbo].[DaiLy] ([MaDaiLy])
GO
ALTER TABLE [dbo].[PhieuThu] CHECK CONSTRAINT [FK_PhieuThu_DaiLy_IdDaiLy]
GO
/****** Object:  StoredProcedure [dbo].[Them_PhanPhoi]    Script Date: 22/12/2018 3:27:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Them_PhanPhoi]
AS
	--Con trỏ--
	DECLARE CUR CURSOR FOR
	SELECT Table2.MaDaiLy, Table2.MaLoaiVeSo, Table2.SoLuong
	FROM
	(
		SELECT MaDaiLy, MAX(NgayDangKy) AS NgayDangKy
		FROM DangKy
		GROUP BY MaDaiLy
	) AS Table1, DangKy as Table2
	WHERE Table1.MaDaiLy = Table2.MaDaiLy AND Table1.NgayDangKy = Table2.NgayDangKy
	--
	DECLARE @IdDaiLy UNIQUEIDENTIFIER
	DECLARE @IdLoaiVeSo UNIQUEIDENTIFIER
	DECLARE @SoLuong INT
	--
	OPEN CUR
	FETCH NEXT FROM CUR INTO @IdDaiLy, @IdLoaiVeSo, @SoLuong
	WHILE @@FETCH_STATUS = 0
	BEGIN
		----
		DECLARE @TiLe FLOAT
		SELECT @TiLe = MAX(TiLe)
		FROM PhanPhoi
		WHERE MaDaiLy = @IdDaiLy
		--
		IF(@TiLe IS NULL)
		BEGIN
			--Bỏ vào bảng phân phối--
			INSERT INTO PhanPhoi(MaPhanPhoi, MaDaiLy, MaLoaiVeSo, NgayPhanPhoi, SoLuongGiao)
				VALUES(NEWID(), @IdDaiLy, @IdLoaiVeSo, CONVERT(DATE, GETDATE()), @SoLuong)
		END
		ELSE
		BEGIN
			DECLARE @SoLuongGiao INT = CAST((@TiLe * @SoLuong) AS INT)
			--Bỏ vào bảng phân phối--
			INSERT INTO PhanPhoi(MaPhanPhoi, MaDaiLy, MaLoaiVeSo, NgayPhanPhoi, SoLuongGiao)
				VALUES(NEWID(), @IdDaiLy, @IdLoaiVeSo, CONVERT(DATE, GETDATE()), @SoLuongGiao)
		END
		FETCH NEXT FROM CUR INTO @IdDaiLy, @IdLoaiVeSo, @SoLuong
	END
	CLOSE CUR
	DEALLOCATE CUR
GO
USE [master]
GO
ALTER DATABASE [QLVeSo] SET  READ_WRITE 
GO
