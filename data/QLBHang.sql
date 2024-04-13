USE [master]
GO
/****** Object:  Database [QLBHang]    Script Date: 4/13/2024 5:30:58 PM ******/
CREATE DATABASE [QLBHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLBHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLBHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLBHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\QLBHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [QLBHang] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBHang] SET  MULTI_USER 
GO
ALTER DATABASE [QLBHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBHang] SET QUERY_STORE = ON
GO
ALTER DATABASE [QLBHang] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QLBHang]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/13/2024 5:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[soLuong] [int] NULL,
	[maHoaDon] [nvarchar](50) NOT NULL,
	[maSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC,
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/13/2024 5:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[maHoaDon] [nvarchar](50) NOT NULL,
	[ngayLapHoaDon] [date] NULL,
	[tienThanhToan] [float] NULL,
	[tienKhachDua] [float] NULL,
	[trangThai] [nvarchar](50) NULL,
	[maNhanVien] [nvarchar](50) NULL,
	[tienThoi] [float] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/13/2024 5:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNhanVien] [nvarchar](50) NOT NULL,
	[hoTen] [nvarchar](50) NULL,
	[ngaySinh] [date] NULL,
	[ngayVaoLam] [date] NULL,
	[soDienThoai] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[trangThai] [nvarchar](50) NULL,
	[trinhDoHocVan] [nvarchar](50) NULL,
	[heSoLuong] [float] NULL,
	[luongCoBan] [float] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhapHang]    Script Date: 4/13/2024 5:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhapHang](
	[maNhapHang] [nvarchar](50) NOT NULL,
	[maSanPham] [nvarchar](50) NULL,
	[ngayTao] [date] NULL,
	[nhaCungCap] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhieuNhapHang] PRIMARY KEY CLUSTERED 
(
	[maNhapHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/13/2024 5:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSanPham] [nvarchar](50) NOT NULL,
	[tenSanPham] [nvarchar](50) NULL,
	[ngaySanXuat] [date] NULL,
	[hanSuDung] [date] NULL,
	[donViTinh] [nvarchar](50) NULL,
	[giaNhap] [float] NULL,
	[soLuong] [int] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 4/13/2024 5:30:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[maNhanVien] [nvarchar](50) NOT NULL,
	[matKhau] [nvarchar](50) NULL,
	[ngayTao] [date] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([maHoaDon])
REFERENCES [dbo].[HoaDon] ([maHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_SanPham] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[PhieuNhapHang]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhapHang_SanPham] FOREIGN KEY([maSanPham])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[PhieuNhapHang] CHECK CONSTRAINT [FK_PhieuNhapHang_SanPham]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([maNhanVien])
REFERENCES [dbo].[NhanVien] ([maNhanVien])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
USE [master]
GO
ALTER DATABASE [QLBHang] SET  READ_WRITE 
GO
INSERT INTO [QLBHang].[dbo].[NhanVien] 
    ([maNhanVien], [hoTen], [ngaySinh], [ngayVaoLam], [soDienThoai], [email], [trangThai], [trinhDoHocVan], [heSoLuong], [luongCoBan])
VALUES 
    ('NV001', N'Nguyễn Văn A', '1990-01-01', '2020-01-01', '0123456789', 'nva@example.com', N'Đang làm việc', N'Đại học', 1.2, 10000000),
    ('NV002', N'Trần Thị B', '1995-02-02', '2021-02-01', '0987654321', 'ttb@example.com', N'Dang làm việc', N'Cao đẳng', 1.1, 9000000),
    ('NV003', N'Lê Văn C', '1992-03-03', '2019-03-01', '0369852147', 'lvc@example.com', N'Đã nghỉ', N'Cao đẳng', 1.0, 8000000),
    ('NV004', N'Phạm Thị D', '1988-04-04', '2018-04-01', '0587412369', 'ptd@example.com', N'Đang làm việc', N'Đại học', 1.3, 11000000),
    ('NV005', N'Hoàng Văn E', '1993-05-05', '2017-05-01', '0796321458', 'hve@example.com', N'Đã nghỉ', N'Trung cấp', 1.0, 8500000)
INSERT INTO [QLBHang].[dbo].SanPham ([maSanPham], [tenSanPham], [ngaySanXuat], [hanSuDung], [donViTinh], [giaNhap], [soLuong])
VALUES 
('SP001', N'Mì gói Hảo Hảo', '2024-04-13', '2025-04-13', 'Gói', 5000, 100),
('SP002', N'Mì gói Omachi', '2024-04-12', '2025-04-12', 'Gói', 6000, 80),
('SP003', N'Mì gói Kokomi', '2024-04-11', '2025-04-11', 'Gói', 5500, 120),
('SP004', N'Mì gói Acecook', '2024-04-10', '2025-04-10', 'Gói', 6500, 90),
('SP005', N'Mì gói Vifon', '2024-04-09', '2025-04-09', 'Gói', 7000, 110)
INSERT INTO [QLBHang].[dbo].HoaDon
    ([maHoaDon], [ngayLapHoaDon], [tienThanhToan], [tienKhachDua], [trangThai], [maNhanVien], [tienThoi])
VALUES 
    ('HD001', '2024-04-13', 50000, 60000, N'Hoàn thành', 'NV001', 10000),
    ('HD002', '2024-04-12', 70000, 80000, N'Hoàn thành', 'NV002', 10000),
    ('HD003', '2024-04-11', 90000, 100000, N'Đã giao hàng', 'NV003', 10000),
    ('HD004', '2024-04-10', 110000, 120000, N'Đã giao hàng', 'NV004', 10000),
    ('HD005', '2024-04-09', 130000, 140000, N'Hoàn thành', 'NV005', 10000)
INSERT INTO [QLBHang].[dbo].PhieuNhapHang 
    ([maNhapHang], [maSanPham], [ngayTao], [nhaCungCap])
VALUES 
    ('PNH001', 'SP001', '2024-04-13', 'Nhà cung cấp A'),
    ('PNH002', 'SP002', '2024-04-12', 'Nhà cung cấp B'),
    ('PNH003', 'SP003', '2024-04-11', 'Nhà cung cấp C'),
    ('PNH004', 'SP004', '2024-04-10', 'Nhà cung cấp D'),
    ('PNH005', 'SP005', '2024-04-09', 'Nhà cung cấp E')
INSERT INTO [QLBHang].[dbo].TaiKhoan ([maNhanVien], [matKhau], [ngayTao])
VALUES 
    ('NV001', 'password1', '2024-04-13'),
    ('NV002', 'password2', '2024-04-12'),
    ('NV003', 'password3', '2024-04-11'),
    ('NV004', 'password4', '2024-04-10'),
    ('NV005', 'password5', '2024-04-09')
INSERT INTO [QLBHang].[dbo].ChiTietHoaDon ([soLuong], [maHoaDon], [maSanPham])
VALUES 
    (5, 'HD001', 'SP001'),
    (3, 'HD001', 'SP002'),
    (2, 'HD002', 'SP003'),
    (4, 'HD002', 'SP004'),
    (6, 'HD003', 'SP005')
