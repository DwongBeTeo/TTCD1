USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 31/10/2024 2:35:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaChiTietDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaDonHang] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 31/10/2024 2:35:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 31/10/2024 2:35:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaNguoiDung] [int] NULL,
	[NgayDatHang] [datetime] NULL,
	[TongTien] [decimal](18, 2) NULL,
	[TrangThai] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 31/10/2024 2:35:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[VaiTro] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuanTri]    Script Date: 31/10/2024 2:35:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuanTri](
	[MaQuanTri] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](100) NOT NULL,
	[HoTen] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[SoDienThoai] [nvarchar](15) NULL,
	[QuyenHan] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuanTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 31/10/2024 2:35:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[MaDanhMuc] [int] NULL,
	[Gia] [decimal](18, 2) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MoTa] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([MaChiTietDonHang], [MaDonHang], [MaSanPham], [SoLuong], [Gia]) VALUES (1, 1, 1, 100, CAST(12325345.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Iphone')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'SamSung')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (3, N'Oppo')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [MaNguoiDung], [NgayDatHang], [TongTien], [TrangThai]) VALUES (1, 1, CAST(N'2024-03-02T00:00:00.000' AS DateTime), CAST(1000000.00 AS Decimal(18, 2)), N'Hàng đang về')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Email], [HoTen], [DiaChi], [SoDienThoai], [VaiTro]) VALUES (1, N'duong1', N'duong1', N'duong1gmail.com', N'duongtran', N'Hanoi', N'1234', N'User')
INSERT [dbo].[NguoiDung] ([MaNguoiDung], [TenDangNhap], [MatKhau], [Email], [HoTen], [DiaChi], [SoDienThoai], [VaiTro]) VALUES (3, N'duong2', N'duong2', N'duong2gmail.com', N'duongnguyen', N'namdinh', N'4321', N'User')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaDanhMuc], [Gia], [SoLuong], [MoTa]) VALUES (1, N'Iphone12', 1, CAST(10000000.00 AS Decimal(18, 2)), 10, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaDanhMuc], [Gia], [SoLuong], [MoTa]) VALUES (2, N'GalaxyZ', 2, CAST(2000000.00 AS Decimal(18, 2)), 5, N'Còn hàng')
INSERT [dbo].[SanPham] ([MaSanPham], [TenSanPham], [MaDanhMuc], [Gia], [SoLuong], [MoTa]) VALUES (3, N'RealMe', 3, CAST(9000000.00 AS Decimal(18, 2)), 10, N'Fullnew100%')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__QuanTri__55F68FC009771FD7]    Script Date: 31/10/2024 2:35:37 PM ******/
ALTER TABLE [dbo].[QuanTri] ADD UNIQUE NONCLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DonHang] ADD  DEFAULT (getdate()) FOR [NgayDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD FOREIGN KEY([MaNguoiDung])
REFERENCES [dbo].[NguoiDung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
