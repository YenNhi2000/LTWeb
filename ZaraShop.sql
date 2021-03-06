USE [ZaraShop]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/9/2022 1:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](200) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SDT] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[TenDN] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 4/9/2022 1:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaHD] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[ThanhTien] [money] NULL,
 CONSTRAINT [PK_ChiTietHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/9/2022 1:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDat] [smalldatetime] NULL,
	[NgayGiao] [smalldatetime] NULL,
	[TenNguoiNhan] [nvarchar](200) NULL,
	[DiaChiNhan] [nvarchar](500) NULL,
	[SDT] [varchar](50) NULL,
	[TongTien] [money] NULL,
	[HinhThucTT] [int] NULL,
	[HinhThucGH] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/9/2022 1:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](200) NULL,
	[GioiTinh] [bit] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SDT] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[TenDN] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 4/9/2022 1:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](200) NULL,
 CONSTRAINT [PK_LoaiSP_1] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 4/9/2022 1:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](200) NULL,
	[DiaChi] [nvarchar](500) NULL,
	[SDT] [varchar](50) NULL,
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 4/9/2022 1:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[Hinh] [nvarchar](250) NULL,
	[MoTa] [nvarchar](500) NULL,
	[SoLuong] [int] NULL,
	[GiaBan] [decimal](18, 0) NULL,
	[GiaKhuyenMai] [decimal](18, 0) NULL,
	[NgayTao] [datetime] NULL,
	[MaLoai] [int] NULL,
	[MaNSX] [int] NULL,
	[TrangThai] [bit] NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admin] ON 

INSERT [dbo].[Admin] ([MaAdmin], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TenDN], [MatKhau]) VALUES (1, N'Nguyễn Thanh Tâm', 1, CAST(N'1995-07-25' AS Date), N'29, Hai Ba Trung, Ha Noi', N'0123456789', N'thanhtam@gmail.com', N'Admin', N'123')
SET IDENTITY_INSERT [dbo].[Admin] OFF
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (16, 4, 1, CAST(270000 AS Decimal(18, 0)), 270000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (17, 7, 1, CAST(525000 AS Decimal(18, 0)), 525000.0000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaSP], [SoLuong], [DonGia], [ThanhTien]) VALUES (19, 12, 1, CAST(210000 AS Decimal(18, 0)), 210000.0000)
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (3, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-15 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 0, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (4, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-15 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 0, 0)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (5, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-17 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (6, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-17 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (7, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-17 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (8, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-17 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (9, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-17 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (10, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-17 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (11, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-24 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 0, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (12, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-29 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 1, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (13, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-29 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 1, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (14, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-29 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 1, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (15, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-29 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 1, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (16, 1, CAST(N'2020-12-10 00:00:00' AS SmallDateTime), CAST(N'2020-12-29 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 270000.0000, 1, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (17, 1, CAST(N'2020-12-11 00:00:00' AS SmallDateTime), CAST(N'2020-12-22 00:00:00' AS SmallDateTime), N'Tâm', N'Phú Lợi, Bình Dương', N'0123456789', 525000.0000, 1, 1)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayDat], [NgayGiao], [TenNguoiNhan], [DiaChiNhan], [SDT], [TongTien], [HinhThucTT], [HinhThucGH]) VALUES (19, 1, CAST(N'2020-12-11 00:00:00' AS SmallDateTime), CAST(N'2020-12-19 00:00:00' AS SmallDateTime), N'Phú', N'Thủ Dầu Một, Bình Dương', N'0987654321', 790000.0000, 0, 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TenDN], [MatKhau]) VALUES (1, N'Hoàng Thanh Tâm', 1, CAST(N'2000-01-16' AS Date), N'Bình Dương', N'0123456789', N'tamhoang@gmail.com', N'tam123', N'123456')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [GioiTinh], [NgaySinh], [DiaChi], [SDT], [Email], [TenDN], [MatKhau]) VALUES (2, N'Nguyễn Ngọc Thảo', 0, CAST(N'2007-03-25' AS Date), N'Bình Phước', N'0123123123', N'thaonguyen@gmail.com', N'nguyenthao2503', N'123456')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[LoaiSP] ON 

INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (1, N'Áo thun')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (2, N'Áo sơ mi')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (3, N'Áo khoác')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (4, N'Quần short')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (5, N'Quần dài')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (6, N'Chân váy')
INSERT [dbo].[LoaiSP] ([MaLoai], [TenLoai]) VALUES (7, N'Đầm')
SET IDENTITY_INSERT [dbo].[LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [SDT]) VALUES (3, N'May Mặc VINA CF', N'431A Hoàng Văn Thụ, P. 4, Q. Tân Bình, TPHCM', N'0929999333')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [SDT]) VALUES (4, N'Ngọc Thảo', N'123 Hai Bà Trưng, P.4, Q.Tân Bình, TPHCM', N'0123456789')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [DiaChi], [SDT]) VALUES (5, N'qwe', N'qwe', N'123123123')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (1, N'Váy chữ a phối ren', N'cv1.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng với chất liệu vải ren, trơn ', 4, CAST(310000 AS Decimal(18, 0)), CAST(280000 AS Decimal(18, 0)), CAST(N'2020-12-10 00:00:00.000' AS DateTime), 6, 4, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (4, N'Quần jean tua rua', N'qd1.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, có tua rua ở chân ống quần.', 11, CAST(270000 AS Decimal(18, 0)), NULL, NULL, 5, 4, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (5, N'Đầm voan họa tiết hoa tay cánh tiên', N'd1.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 8, CAST(425000 AS Decimal(18, 0)), NULL, NULL, 7, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (6, N'Quần âu hàn quốc body', N'qd2.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 14, CAST(300000 AS Decimal(18, 0)), CAST(285000 AS Decimal(18, 0)), NULL, 5, 4, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (7, N'Đầm xòe lưới công sở tay ngắn', N'd2.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 10, CAST(525000 AS Decimal(18, 0)), CAST(490000 AS Decimal(18, 0)), NULL, 7, 5, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (10, N'Áo sơ mi công sở phối ren cổ tròn', N'somi2.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng với họa tiết ren ở cổ áo và tay áo.', 7, CAST(180000 AS Decimal(18, 0)), NULL, NULL, 2, 4, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (11, N'Quần short kaki đen 2 nút', N'qs1.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, năng động.', 10, CAST(150000 AS Decimal(18, 0)), NULL, NULL, 4, 5, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (12, N'Đầm midi đỏ cổ tim tay búp', N'd3.jpg', N'VINTAGE đậm chất lại dịu dàng nữ tính, tay búp lở nhấn nhá tuyệt vời. Dạo phố, hẹn hò cứ lên đồ là xinh đốn tim. Form midi thổi bay các khuyến điểm - vừa thanh lịch vừa đẹp ghi điểm ngay.', 4, CAST(210000 AS Decimal(18, 0)), NULL, NULL, 7, 4, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (14, N'Quần ống suông', N'qd3.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung với chất liệu vải trơn.', 8, CAST(250000 AS Decimal(18, 0)), NULL, NULL, 5, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (15, N'Áo thun sọc ngang đen trắng', N'ath2.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 5, CAST(135000 AS Decimal(18, 0)), CAST(105000 AS Decimal(18, 0)), NULL, 1, 5, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (17, N'Đầm 2s gấm cúp ngực nơ xếp 1 bên', N'd4.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế khoe đôi vai thon gọn, gợi cảm của nàng, chi tiết phần nơ 1 bên nhấn nhá cách điệu sẽ càng thêm phần lộng lẫy cho phái nữ.', 6, CAST(445000 AS Decimal(18, 0)), CAST(430000 AS Decimal(18, 0)), NULL, 7, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (18, N'Váy đen xếp ly', N'cv3.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 11, CAST(295000 AS Decimal(18, 0)), CAST(270000 AS Decimal(18, 0)), NULL, 6, 5, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (20, N'Áo thun nâu cún con', N'ath3.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 8, CAST(120000 AS Decimal(18, 0)), NULL, NULL, 1, 4, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (23, N'Áo thun trắng Hugs and Kisses', N'ath4.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 10, CAST(130000 AS Decimal(18, 0)), NULL, NULL, 1, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (24, N'Áo khoác kaki túi hộp', N'ak4.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 7, CAST(300000 AS Decimal(18, 0)), CAST(285000 AS Decimal(18, 0)), NULL, 3, 5, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (26, N'Short ngố jean Ulzzang ', N'qs3.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 9, CAST(160000 AS Decimal(18, 0)), NULL, NULL, 4, 5, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (27, N'Áo khoác hoa hướng dương', N'ak5.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 6, CAST(250000 AS Decimal(18, 0)), NULL, NULL, 3, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (28, N'Jacket dù 3D', N'ak6.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 8, CAST(265000 AS Decimal(18, 0)), NULL, NULL, 3, 4, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (31, N'Đầm voan đuôi cá đắp chéo', N'd6.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 7, CAST(460000 AS Decimal(18, 0)), CAST(440000 AS Decimal(18, 0)), NULL, 7, 5, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (32, N'Áo thun xanh chữ Love', N'ath5.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 10, CAST(125000 AS Decimal(18, 0)), NULL, NULL, 1, 3, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (33, N'Áo khoác dù', N'ak8.jpg', N'Đây là mẫu thiết kế thời trang mới. Kiểu thiết kế trẻ trung, sang trọng.', 5, CAST(255000 AS Decimal(18, 0)), NULL, NULL, 3, 4, 1)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Hinh], [MoTa], [SoLuong], [GiaBan], [GiaKhuyenMai], [NgayTao], [MaLoai], [MaNSX], [TrangThai]) VALUES (34, N'Sơ mi đỏ nhúng bèo xếp li', N'ak6.jpg', N'se', 3, CAST(30000 AS Decimal(18, 0)), CAST(0 AS Decimal(18, 0)), CAST(N'2020-12-12 01:20:57.320' AS DateTime), 2, 5, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHD] CHECK CONSTRAINT [FK_ChiTietHD_SanPham]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiSP] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
/****** Object:  StoredProcedure [dbo].[DangNhap_Search]    Script Date: 4/9/2022 1:02:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DangNhap_Search]
	@UserName varchar(32),
	@Password varchar(32)
as
begin
	declare @count int
	declare @res bit
	select @count = COUNT(*) from dbo.KhachHang where TaiKhoan = @UserName and MatKhau = @Password
	if @count > 0
		set @res = 1
	else
		set @res = 0
	select @res
end

GO
