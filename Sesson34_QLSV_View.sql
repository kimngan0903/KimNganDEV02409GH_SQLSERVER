CREATE DATABASE Sesson34_QLSV_View
GO
  
USE Sesson34_QLSV_View
GO
/****** Object:  Table [dbo].[Ketqua]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ketqua](
	[MaSV] [nvarchar](3) NOT NULL,
	[MaMH] [nvarchar](2) NOT NULL,
	[Diem] [real] NULL,
 CONSTRAINT [Prk_MaSV_MAMH] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[MaKH] [nvarchar](2) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
 CONSTRAINT [Prk_KHOA_khoa] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [nvarchar](2) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[Sotiet] [tinyint] NULL,
 CONSTRAINT [Prk_MONHOC_MaMH] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 12/3/2020 12:51:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [nvarchar](3) NOT NULL,
	[HoSV] [nvarchar](15) NOT NULL,
	[TenSV] [nvarchar](7) NOT NULL,
	[Phai] [bit] NOT NULL,
	[NgaySinh] [smalldatetime] NOT NULL,
	[NoiSinh] [nvarchar](100) NOT NULL,
	[MaKH] [nvarchar](2) NOT NULL,
	[HocBong] [float] NULL,
	[DiemTrungBinh] [float] NULL,
 CONSTRAINT [Prk_SINHVIEN_MaSV] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'03', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'04', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A01', N'05', 3.9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'01', 4.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'05', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A02', N'08', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'01', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A03', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'02', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'03', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'04', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'A04', N'08', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'01', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'03', 2.5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B01', N'04', 4)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'02', 6)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'04', 10)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'06', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B02', N'08', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'01', 8)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'03', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'B04', N'04', 9)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'01', 3)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'03', 2)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'04', 7)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'05', 5)
INSERT [dbo].[Ketqua] ([MaSV], [MaMH], [Diem]) VALUES (N'C01', N'06', 6)
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'AV', N'Anh Văn')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'DT', N'Điện tử')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'KT', N'Kế toán')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TH', N'Tin học')
INSERT [dbo].[Khoa] ([MaKH], [TenKH]) VALUES (N'TR', N'Triết')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'01', N'Cơ sở dữ liệu', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'02', N'Trí tuệ nhân tạo', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'03', N'Toán rời rạc ứng dụng', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'04', N'Đồ họa ứng dụng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'05', N'Tiếng Anh cơ bản', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'06', N'Tin học văn phòng', 60)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'07', N'Pháp luật đại cương', 30)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'08', N'Anh chuyên Ngành', 45)
INSERT [dbo].[MonHoc] ([MaMH], [TenMH], [Sotiet]) VALUES (N'09', N'PTTK Hệ thống', 60)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A00', N'Nguyễn Thị', N'Vân', 1, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A01', N'Nguyễn Thị', N'Vân', 0, CAST(N'1986-02-23T00:00:00' AS SmallDateTime), N'Hà Giang', N'KT', 130000, 5.1800000190734865)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A02', N'Trần Văn', N'Chính', 0, CAST(N'1994-12-20T00:00:00' AS SmallDateTime), N'Bình Định', N'TH', 150000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A03', N'Lê Thu Bạch', N'Yến', 1, CAST(N'1993-02-21T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A04', N'Trần Anh', N'Tuấn', 0, CAST(N'1987-12-20T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A10', N'Trần Thị', N'Mai', 1, CAST(N'1994-10-04T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A11', N'Nguyễn Thành', N'Nam', 0, CAST(N'2000-01-01T00:00:00' AS SmallDateTime), N'Cà Mau', N'AV', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'A12', N'Nguyễn Quang', N'Quyền', 0, CAST(N'2001-01-01T00:00:00' AS SmallDateTime), N'Đồng Nai', N'DT', NULL, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B01', N'Hoàng Thanh', N'Mai', 1, CAST(N'1992-08-12T00:00:00' AS SmallDateTime), N'Hải Phòng', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B02', N'Trần Thị Thu', N'Thủy', 1, CAST(N'1990-01-02T00:00:00' AS SmallDateTime), N'Tp. HCM', N'AV', 80000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B03', N'Đố Văn', N'Lâm', 0, CAST(N'1994-02-26T00:00:00' AS SmallDateTime), N'Bình Định', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'B04', N'Bùi Kim', N'Dung', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hµ Néi', N'TH', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C01', N'Hà Quang', N'Anh', 0, CAST(N'1985-03-11T00:00:00' AS SmallDateTime), N'Tp. HCM', N'TR', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'C03', N'Lê Quang', N'Lưu', 0, CAST(N'1985-02-23T00:00:00' AS SmallDateTime), N'Hà Nội', N'TH', 0, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T03', N'Hoàng Thị Hải', N'Yến', 1, CAST(N'1989-09-10T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 170000, NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoSV], [TenSV], [Phai], [NgaySinh], [NoiSinh], [MaKH], [HocBong], [DiemTrungBinh]) VALUES (N'T06', N'Nguyễn Văn', N'Thắng', 0, CAST(N'1988-10-18T00:00:00' AS SmallDateTime), N'Hà Nội', N'AV', 1500000, NULL)
ALTER TABLE [dbo].[SinhVien] ADD  CONSTRAINT [Def_SINHVIEN_HocBong]  DEFAULT ((0)) FOR [HocBong]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Makh] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Makh]
GO
ALTER TABLE [dbo].[Ketqua]  WITH CHECK ADD  CONSTRAINT [Frk_KetQua_Mamh] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[Ketqua] CHECK CONSTRAINT [Frk_KetQua_Mamh]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [Frk_SINHVIEN_Makh] FOREIGN KEY([MaKH])
REFERENCES [dbo].[Khoa] ([MaKH])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [Frk_SINHVIEN_Makh]
GO

--- Bài 1: Tạo các view với yêu cầu sau
--- 1. Liệt kê các sinh viên có học bổng lớn hơn 100,0000 và sinh ở Hà Nội, gồm các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
CREATE VIEW vw_HocBong
AS
	SELECT HoSV + ' ' + TenSV AS [Họ tên sinh viên]
		, MaKH AS [Mã khoa]
		, NoiSinh AS [Nơi sinh]
		, HocBong AS [Học bổng]
	FROM SinhVien
	WHERE HocBong > 100000 AND NoiSinh = N'Hà Nội'	
GO

SELECT * FROM vw_HocBong

--- 2. Danh sách các sinh viên của khoa Anh văn và khoa Triết, gồm các thông tin: Mã sinh viên, Mã khoa, Phái.
CREATE VIEW vw_SinhVienKhoaAnhTriet
AS
	SELECT MaSV AS [Mã sinh viên]
		, MaKH AS [Mã khoa]
		,Phai AS [Phái]
	FROM SinhVien
	WHERE MaKH = 'AV' OR MaKH = 'TR'
GO

SELECT * FROM vw_SinhVienKhoaAnhTriet

--- 3. Cho biết những sinh viên có ngày sinh từ ngày 01/01/1986 đến ngày 05/06/1992, gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học bổng
CREATE VIEW vw_SinhVienCoNgaySinh
AS
	SELECT MaSV AS [Mã sinh viên]
		, NgaySinh AS [Ngày sinh]
		, NoiSinh AS [Nơi sinh]
		, HocBong AS [Học bổng]
	FROM SinhVien
	WHERE NgaySinh BETWEEN '1986-01-01' AND '1992-06-05'
GO

SELECT * FROM vw_SinhVienCoNgaySinh

--- 4. Danh sách những sinh viên có học bổng từ 200,000 đến 800,000, gồm các thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.
CREATE VIEW vw_SinhVienCoHocBong
AS
	SELECT MaSV AS [Mã sinh viên]
		, NgaySinh AS [Ngày sinh]
		, Phai AS [Phái]
		, MaKH AS [Mã khoa]
	FROM SinhVien
	WHERE HocBong BETWEEN 20000 AND 800000
GO

SELECT * FROM vw_SinhVienCoHocBong

--- 5. Cho biết những môn học có số tiết lớn hơn 40 và nhỏ hơn 60, gồm các thông tin: Mã môn học, Tên môn học, Số tiết.
CREATE VIEW vw_MonHocCoSoTietLonNho
AS
	SELECT MaMH AS [Mã môn học]
		, TenMH AS [Tên môn học]
		, Sotiet AS [Số tiết]
	FROM MonHoc
	WHERE Sotiet BETWEEN 40 AND 60
GO

SELECT * FROM vw_MonHocCoSoTietLonNho

--- 6. Liệt kê những sinh viên nam của khoa Anh văn, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, Phái.
CREATE VIEW vw_SinhVienNamAnhVan
AS
	SELECT MaSV AS [Mã sinh viên]
		, HoSV + ' ' + TenSV AS [Họ tên sinh viên]
		, Phai AS [Phái]
	FROM SinhVien JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	WHERE Phai = 0 AND TenKH = N'Anh Văn'
GO

SELECT * FROM vw_SinhVienNamAnhVan

--- 7. Danh sách sinh viên có nơi sinh ở Hà Nội và ngày sinh sau ngày 01/01/1990, gồm các thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
CREATE VIEW vw_SinhVienHN
AS
	SELECT HoSV AS [Họ sinh viên]
		, TenSV AS [Tên Sinh viên]
		, NoiSinh AS [Nơi sinh]
		, NgaySinh AS [Ngày sinh]
	FROM SinhVien
	WHERE NoiSinh = N'Hà Nội' AND NgaySinh > '1990-01-01'
GO

SELECT * FROM vw_SinhVienHN

--- 8. Liệt kê những sinh viên nữ, tên có chứa chữ N.
CREATE VIEW vw_SinhVienNuChuN
AS
	SELECT *
	FROM SinhVien
	WHERE Phai = 1 AND TenSV LIKE N'%N%'
GO

SELECT * FROM vw_SinhVienNuChuN

--- 9. Danh sách các nam sinh viên khoa Tin Học có ngày sinh sau ngày 30/5/1986.
CREATE VIEW vw_SinhVienNamTinHoc
AS
	SELECT MaSV AS [Mã sinh viên]
		, HoSV AS [Họ sinh viên]
		, TenSV AS [Tên Sinh viên]
		, Phai AS [Phái]
		, NoiSinh AS [Nơi sinh]
		, NgaySinh AS [Ngày sinh]
		, Khoa.MaKH AS [Mã khoa]
		, HocBong AS [Học bổng]
		, DiemTrungBinh AS [Điểm trung bình]
	FROM SinhVien JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	WHERE Phai = 0 AND TenKH = N'Tin học' AND NgaySinh > '1986-05-30'
GO

SELECT * FROM vw_SinhVienNamTinHoc

--- 10. Liệt kê danh sách sinh viên gồm các thông tin sau: Họ và tên sinh viên, Giới tính, Ngày sinh. Trong đó Giới tính hiển thị ở dạng Nam/Nữ tuỳ theo giá trị của field Phai là True hay False.
CREATE VIEW vw_DanhSachSinhVienGTNamNu
AS
	SELECT HoSV + ' ' + TenSV AS [Họ tên sinh viên]
		, CASE WHEN Phai = '0' THEN N'Nam' ELSE N'Nữ' END AS [Giới tính]
		, NgaySinh AS [Ngày sinh]
	FROM SinhVien
GO

SELECT * FROM vw_DanhSachSinhVienGTNamNu

--- 11. Cho biết danh sách sinh viên gồm các thông tin sau: Mã sinh viên, Tuổi, Nơi sinh, Mã khoa. Trong đó Tuổi sẽ được tính bằng cách lấy năm hiện hành trừ cho năm sinh
CREATE VIEW vw_TuoiBangNamHienHanhTruNamSinh
AS
	SELECT MaSV AS [Mã sinh viên]
		, NoiSinh AS [Nơi sinh]
		, MaKH AS [Mã khoa]
		, YEAR(GETDATE()) - YEAR(NgaySinh) AS [Tuổi]
	FROM SinhVien
GO

SELECT * FROM vw_TuoiBangNamHienHanhTruNamSinh

--- 12. Danh sách những sinh viên có tuổi từ 20 đến 30, thông tin gồm: Mã sinh viên, Tuổi, Tên khoa
CREATE VIEW vw_SinhVienTuoi20Den30
AS
	SELECT MaSV AS [Mã sinh viên]
		, YEAR(GETDATE()) - YEAR(NgaySinh) AS [Tuổi]
		, NoiSinh AS [Nơi sinh]
		, TenKH AS [Tên khoa]
	FROM SinhVien JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	WHERE YEAR(GETDATE()) - YEAR(NgaySinh) BETWEEN 20 AND 30
GO

SELECT * FROM vw_SinhVienTuoi20Den30

--- 13. Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên, Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học bổng cao” nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển thị là "Mức trung bình"
CREATE VIEW vw_MucHocBong
AS
	SELECT MaSV AS [Mã sinh viên]
		, Phai AS [Phái]
		, MaKH AS [Mã khoa]
		, CASE WHEN HocBong > 500000 THEN N'Học bổng cao' ELSE N'Mức trung bình' END AS [Mức học bổng]
	FROM SinhVien
GO

SELECT * FROM vw_MucHocBong

--- 14. Danh sách sinh viên của khoa Anh văn, điều kiện lọc phải sử dụng tên khoa, gồm các thông tin sau: Họ tên sinh viên, Giới tính, Tên khoa. Trong đó, Giới tính sẽ hiển thị dạng Nam/Nữ
CREATE VIEW vw_SinhVienKhoaAnhVan
AS
	SELECT HoSV + '' +TenSV AS [Họ tên sinh viên]
		, CASE WHEN Phai = 0 THEN N'Nam' ELSE N'Nữ' END AS [Giới tính]
		, TenKH AS [Tên khoa]
	FROM SinhVien JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	WHERE TenKH = N'Anh Văn'
GO

SELECT * FROM vw_SinhVienKhoaAnhVan

--- 15. Liệt kê bảng điểm của sinh viên khoa Tin Học, gồm các thông tin: Tên khoa, Họ tên sinh viên, Tên môn học, Số tiết, Điểm
CREATE VIEW vw_BangDiemSinhVienKhoaTin
AS
	SELECT TenKH as [Tên khoa]
		, HoSV + '' +TenSV AS [Họ tên sinh viên]
		, TenMH AS [Tên môn học]
		, SoTiet AS [Số tiết]
		, Diem AS [Điểm]
	FROM Ketqua 
	JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
	JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
	JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	WHERE TenKH = N'Tin học'
GO

SELECT * FROM vw_BangDiemSinhVienKhoaTin

--- 16. Kết quả học tập của sinh viên, gồm các thông tin: Họ tên sinh viên, Mã khoa, Tên môn học, Điểm thi, Loại. Trong đó, Loại sẽ là Giỏi nếu điểm thi > 8, từ 6 đến 8 thì Loại là Khá, nhỏ hơn 6 thì loại là Trung Bình
CREATE VIEW vw_LoaiGioKhaTB
AS
	SELECT HoSV + '' +TenSV AS [Họ tên sinh viên]
		, MaKH AS [Mã khoa]
		, TenMH AS [Tên môn học]
		, Diem AS [Điểm]
		, CASE
			WHEN Diem > 8 THEN N'Giỏi' 
			WHEN Diem BETWEEN 6 AND 8 THEN N'Khá'
			ELSE N'Trung bình'
		  END AS [Loại]
	FROM Ketqua
	JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
	JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
GO

SELECT * FROM vw_LoaiGioKhaTB

--- 17. Cho biết học bổng cao nhất của từng khoa, gồm Mã khoa, Tên khoa, Học bổng cao nhất
CREATE VIEW vw_HocBongCaoNhatTungKhoa
AS
	SELECT Khoa.MaKH AS [Mã khoa]
		, TenKH AS [Tên khoa]
		, MAX(HocBong) as [Học bổng cao nhất]
	FROM Khoa
	JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
	GROUP BY Khoa.MaKH, TenKH
GO

SELECT * FROM vw_HocBongCaoNhatTungKhoa

--- 18. Thống kê số sinh viên học của từng môn, thông tin có: Mã môn, Tên môn, Số sinh viên đang học
CREATE VIEW vw_SinhVienHocTungMon
AS
	SELECT MonHoc.MaMH [Mã khoa]
		, TenMH [Tên khoa]
		, COUNT(SinhVien.MaSV) AS [Số sinh viên đang học]
	FROM MonHoc
	JOIN Ketqua ON Ketqua.MaMH = Ketqua.MaMH
	JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
	GROUP BY MonHoc.MaMH, TenMH
GO

SELECT * FROM vw_SinhVienHocTungMon

--- 19. Cho biết môn nào có điểm thi cao nhất, gồm các thông tin: Tên môn, Số tiết, Tên sinh viên, Điểm
CREATE VIEW vw_MonCoDiemThiCao
AS
	SELECT TenMH AS [Tên môn học]
		, Sotiet AS [Số tiết]
		, TenSV AS [Tên sinh viên]
		, Ketqua.Diem AS [Điểm cao nhất]
	FROM MonHoc
	JOIN Ketqua ON MonHoc.MaMH = Ketqua.MaMH
	JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
	WHERE Ketqua.Diem = (
		SELECT MAX(Diem)
		FROM Ketqua
	)
GO

SELECT * FROM vw_MonCoDiemThiCao

--- 20. Cho biết khoa nào có đông sinh viên nhất, gồm Mã khoa, Tên khoa, Tổng số sinh viên
CREATE VIEW vw_KhoaDongSinhVienNhat
AS
	SELECT Khoa.MaKH AS [Mã khoa]
		, Khoa.TenKH AS [Tên khoa]
		, COUNT(SinhVien.MaSV) AS [Tổng số sinh viên]
	FROM Khoa
	JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
	GROUP BY Khoa.MaKH, Khoa.TenKH
	HAVING COUNT(SinhVien.MaSV) = (
		SELECT MAX([Tổng số sinh viên]) 
		FROM (
			SELECT COUNT(SinhVien.MaSV) AS [Tổng số sinh viên]
			FROM Khoa
			JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
			GROUP BY Khoa.MaKH
		) AS SubQuery
	)
	ORDER BY [Tổng số sinh viên] DESC
GO

SELECT * FROM vw_KhoaDongSinhVienNhat

--- 21. Cho biết khoa nào có sinh viên lảnh học bổng cao nhất, gồm các thông tin sau: Tên khoa, Họ tên sinh viên, Học bổng
CREATE VIEW vw_KhoaCoSinhVienHocBongCaoNhat
AS
	SELECT TenKH AS [Tên khoa]
		, HoSV + '' + TenSV AS [Họ tên sinh viên]
		, SinhVien.HocBong AS [Học bổng cao nhất]
	FROM Khoa
	JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
	WHERE SinhVien.HocBong = (
		SELECT MAX(HocBong)
		FROM SinhVien
	)	
GO

SELECT * FROM vw_KhoaCoSinhVienHocBongCaoNhat

--- 22. Cho biết sinh viên của khoa Tin học có có học bổng cao nhất, gồm các thông tin: Mã sinh viên, Họ sinh viên, Tên sinh viên, Tên khoa, Học bổng
CREATE VIEW vw_SinhVienKhoaTinHocCoHocBongCaoNhat
AS
	SELECT MaSV AS [Mã sinh viên]
		, HoSV AS [Họ sinh viên]
		, TenSV AS [Tên sinh viên]
		, TenKH AS [Tên khoa]
		, SinhVien.HocBong AS [Học bổng cao nhất]
	FROM SinhVien
	JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	WHERE TenKH = N'Tin học'
	AND SinhVien.HocBong = (
		SELECT MAX(HocBong)
		FROM SinhVien
		JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
		WHERE TenKH = N'Tin học'
	)
GO

SELECT * FROM vw_SinhVienKhoaTinHocCoHocBongCaoNhat

--- 23. Cho biết sinh viên nào có điểm môn Cơ sở dữ liệu lớn nhất, gồm thông tin: Họ sinh viên, Tên môn, Điểm
CREATE VIEW vw_SinhVienCoDiemCSDLLonNhat
AS
	SELECT TOP 1
		HoSV AS [Họ sinh viên]
		, TenMH AS [Tên môn học]
		, MAX(Ketqua.Diem) AS [Điểm lớn nhất] 
	FROM Ketqua
	JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
	JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
	WHERE TenMH = N'Cơ sở dữ liệu'
	GROUP BY HoSV, TenMH
GO

SELECT * FROM vw_SinhVienCoDiemCSDLLonNhat

--- 24. Cho biết 3 sinh viên có điểm thi môn Đồ hoạthấp nhất, thông tin: Họ tên sinh viên, Tên khoa, Tên môn, Điểm
CREATE VIEW vw_3SinhVienCoDiemMonDoHoaThap
AS
	SELECT TOP 3
		HoSV + ' ' + TenSV AS [Họ tên sinh viên]
		, TenKH AS [Tên khoa]
		, TenMH AS [Tên môn học]
		, Ketqua.Diem AS [Điểm thấp nhất]
	FROM SinhVien
	JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
	JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
	JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	WHERE TenMH = N'Đồ họa ứng dụng'
	ORDER BY Ketqua.Diem ASC
GO

SELECT * FROM vw_3SinhVienCoDiemMonDoHoaThap

--- 25. Cho biết nào có nhiều sinh viên nữ nhất, gồm các thông tin: Mã khoa, Tên khoa
CREATE VIEW vw_KhoaNhieuSinhVienNu
AS
	SELECT Khoa.MaKH AS [Mã khoa]
		,TenKH AS [Tên khoa]
		, COUNT(SinhVien.MaSV) AS [Số lượng sinh viên nữ]
	FROM Khoa
	JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
	WHERE SinhVien.Phai = 1 
	GROUP BY Khoa.MaKH, Khoa.TenKH
	HAVING COUNT(SinhVien.MaSV) = (
		SELECT MAX([Số lượng sinh viên nữ]) 
		FROM (
			SELECT COUNT(SinhVien.MaSV) AS [Số lượng sinh viên nữ]
			FROM Khoa
			JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
			WHERE SinhVien.Phai = 1
			GROUP BY Khoa.MaKH
		) AS SubQuery
	)
	ORDER BY [Số lượng sinh viên nữ] DESC;
GO

SELECT * FROM vw_KhoaNhieuSinhVienNu

--- 26. Thống kê sinh viên theo khoa, gồm các thông tin: Mã khoa, Tên khoa, Tổng số sinh viên, Tổng số sinh viên nữ
CREATE VIEW vw_ThongKeSinhVienTheoKhoa
AS
	SELECT Khoa.MaKH AS [Mã khoa]
		, TenKH AS [Tên khoa]
		, COUNT(SinhVien.MaSV) AS [Tổng số sinh viên]
		, SUM(CASE WHEN Phai = 1 THEN 1 ELSE 0 END) AS [Tổng số sinh viên nữ]
	FROM Khoa
	JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
	GROUP BY Khoa.MaKH, TenKH
GO

SELECT * FROM vw_ThongKeSinhVienTheoKhoa

--- 27. Cho biết kết quả học tập của sinh viên, gồm Họ tên sinh viên, Tên khoa, Kết quả. Trong đó, Kết quả sẽ là Đậu nếu không có môn nào có điểm nhỏ hơn 4
CREATE VIEW vw_KetQuaHocCuaSinhVien
AS
	SELECT HoSV + ' ' + TenSV AS [Họ tên sinh viên]
		, TenKH AS [Tên khoa]
		, CASE WHEN Diem > 4 THEN N'Đậu' ELSE N'Trượt' END AS [Kết quả] 
	FROM SinhVien
	JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
	JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
	JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
GO

SELECT * FROM vw_KetQuaHocCuaSinhVien

--- 28. Danh sách những sinh viên không có môn nào nhỏ hơn 4 điểm, gồm các thông tin: Họ tên sinh viên, Tên khoa, Phái
CREATE VIEW vw_SinhVienKhongCoMonNho4
AS
	SELECT HoSV + ' ' + TenSV AS [Họ tên sinh viên]
		, TenKH AS [Tên khoa]
		, Phai AS [Phái]
	FROM SinhVien
	JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	WHERE NOT EXISTS (
		SELECT 1
		FROM Ketqua
		WHERE Ketqua.MaSV = SinhVien.MaSV
		AND Ketqua.Diem < 4
	)
GO

SELECT * FROM vw_SinhVienKhongCoMonNho4

--- 29. Cho biết danh sách những môn không có điểm thi nhỏ hơn 4, gồm các thông tin: Mã môn, Tên Môn
CREATE VIEW vw_MonKhongCoDienNho4
AS
	SELECT MaMH AS [Mã môn học]
		, TenMH AS [Tên môn học]
	FROM MonHoc
	WHERE NOT EXISTS (
		SELECT 1
		FROM Ketqua
		WHERE Ketqua.MaMH = MonHoc.MaMH
		AND Ketqua.Diem < 4
	)
GO

SELECT * FROM vw_MonKhongCoDienNho4

--- 30. Cho biết những khoa không có sinh viên rớt, sinh viên rớt nếu điểm thi của môn nhỏ hơn 5, gồm các thông tin: Mã khoa, Tên khoa
CREATE VIEW vw_KhoaKhongCoSinhVienRot
AS
	SELECT MaKH AS [Mã khoa]
		, TenKH AS [Tên khoa]
	FROM Khoa
	WHERE NOT EXISTS (
		SELECT 1
		FROM SinhVien
		JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
		WHERE SinhVien.MaKH = Khoa.MaKH
		AND Ketqua.Diem < 5
	)
GO

SELECT * FROM vw_KhoaKhongCoSinhVienRot

--- 31. Thống kê số sinh viên đậu và số sinh viên rớt của từng môn, biết rằng sinh viên rớt khi điểm của môn nhỏ hơn 5, gồm có: Mã môn, Tên môn, Số sinh viên đậu, Số sinh viên rớt
CREATE VIEW vw_SinhVienDauRot
AS
	SELECT MonHoc.MaMH AS [Mã môn học]
		, TenMH AS [Tên môn học]
		, COUNT(CASE WHEN Diem >= 5 THEN N'Đậu' END) AS [Sinh viên đậu]
		, COUNT(CASE WHEN Diem < 5 THEN N'Rớt' END) AS [Sinh viên rớt]
	FROM MonHoc
	JOIN Ketqua ON MonHoc.MaMH = Ketqua.MaMH
	JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
	GROUP BY MonHoc.MaMH, TenMH
GO

SELECT * FROM vw_SinhVienDauRot

--- 32. Cho biết môn nào không có sinh viên rớt, gồm có: Mã môn, Tên môn
CREATE VIEW vw_MonKhongSinhVienRot
AS
	SELECT MonHoc.MaMH AS [Mã môn học]
		, TenMH AS [Ten môn học]
	FROM MonHoc
	JOIN Ketqua ON MonHoc.MaMH = Ketqua.MaMH
	JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
	WHERE NOT EXISTS (
		SELECT 1
		FROM Ketqua
		JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
		WHERE Ketqua.MaMH = MonHoc.MaMH
		AND Ketqua.Diem < 5
	)
GO

SELECT * FROM vw_MonKhongSinhVienRot

--- 33. Danh sách sinh viên không có môn nào rớt, thông tin gồm: Mã sinh viên, Họ tên, Mã khoa
CREATE VIEW vw_SinhVienKhongMonNaoRot
AS
	SELECT SinhVien.MaSV AS [Mã sinh viên]
		, HoSV + ' ' + TenSV AS [Họ tên sinh viên]
		, Khoa.MaKH AS [Mã khoa]
	FROM SinhVien
	JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
	WHERE NOT EXISTS (
		SELECT 1
		FROM Ketqua
		JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
		WHERE Ketqua.MaSV = SinhVien.MaSV
		AND Ketqua.Diem < 5
	)
GO

SELECT * FROM vw_SinhVienKhongMonNaoRot

--- 34. Danh sách các sinh viên rớt trên 2 môn, gồm Mã sinh viên, Họ sinh Tên sinh viên, Mã khoa
CREATE VIEW vw_SinhVienRotTren2Mon
AS
	SELECT 
		SinhVien.MaSV AS [Mã sinh viên],
		HoSV + ' ' + TenSV AS [Họ tên sinh viên],
		MaKH AS [Mã khoa]
	FROM SinhVien
	JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
	WHERE Ketqua.Diem < 5
	GROUP BY SinhVien.MaSV, HoSV + ' ' + TenSV, MaKH
	HAVING COUNT(Ketqua.MaMH) > 2
GO

--- 35. Cho biết danh sách những khoa có nhiều hơn 10 sinh viên, gồm Mã khoa, Tên khoa, Tổng số sinh viên của khoa
CREATE VIEW vw_KhoaNhieuHon10SinhVien
AS
	SELECT 
		Khoa.MaKH AS [Mã khoa],
		Khoa.TenKH AS [Tên khoa],
		COUNT(SinhVien.MaSV) AS [Tổng số sinh viên]
	FROM Khoa
	JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
	GROUP BY Khoa.MaKH, Khoa.TenKH
	HAVING COUNT(SinhVien.MaSV) > 10
GO

--- 36. Danh sách những sinh viên thi nhiều hơn 4 môn, gồm có Mã sinh viên, Họ tên sinh viên, Số môn thi
CREATE VIEW vw_SinhVienThiNhieuHon4Mon
AS
	SELECT 
		SinhVien.MaSV AS [Mã sinh viên],
		SinhVien.HoSV + ' ' + SinhVien.TenSV AS [Họ tên sinh viên],
		COUNT(DISTINCT Ketqua.MaMH) AS [Số môn thi]
	FROM SinhVien
	JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
	GROUP BY SinhVien.MaSV, SinhVien.HoSV, SinhVien.TenSV
	HAVING COUNT(DISTINCT Ketqua.MaMH) > 4
GO

--- 37. Cho biết khoa có 5 sinh viên nam trở lên, thông tin gồm có: Mã khoa, Tên khoa, Tổng số sinh viên nam
CREATE VIEW vw_KhoaCo5SinhVienNam
AS
	SELECT 
		Khoa.MaKH AS [Mã khoa],
		Khoa.TenKH AS [Tên khoa],
		COUNT(SinhVien.MaSV) AS [Tổng số sinh viên nam]
	FROM Khoa
	JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
	WHERE SinhVien.Phai = 1  -- Phái = 1 giả sử là nam
	GROUP BY Khoa.MaKH, Khoa.TenKH
	HAVING COUNT(SinhVien.MaSV) >= 5
GO

--- 38. Danh sách những sinh viên có trung bình điểm thi lớn hơn. 4, gồm các thông tin sau: Họ tên sinh viên, Tên khoa, Phái, Điểm trung bình các môn
CREATE VIEW vw_SinhVienTrungBinhDiemLonHon4
AS
	SELECT 
		SinhVien.HoSV + ' ' + SinhVien.TenSV AS [Họ tên sinh viên],
		Khoa.TenKH AS [Tên khoa],
		SinhVien.Phai AS [Phái],
		AVG(Ketqua.Diem) AS [Điểm trung bình các môn]
	FROM SinhVien
	JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
	JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
	GROUP BY SinhVien.HoSV, SinhVien.TenSV, Khoa.TenKH, SinhVien.Phai
	HAVING AVG(Ketqua.Diem) > 4
GO

--- 39. Cho biết trung bình điểm thi của từng môn, chỉ lấy môn nào có trung bình điểm thi lớn hơn 6, thông tin gồm có: Mã môn, Tên môn, Trung bình điểm
CREATE VIEW vw_TrungBinhDiemMonHocLonHon6
AS
	SELECT 
		MonHoc.MaMH AS [Mã môn],
		MonHoc.TenMH AS [Tên môn],
		AVG(Ketqua.Diem) AS [Trung bình điểm]
	FROM MonHoc
	JOIN Ketqua ON MonHoc.MaMH = Ketqua.MaMH
	GROUP BY MonHoc.MaMH, MonHoc.TenMH
	HAVING AVG(Ketqua.Diem) > 6
GO

SELECT * FROM SinhVien
SELECT * FROM MonHoc
SELECT * FROM Khoa
SELECT * FROM Ketqua