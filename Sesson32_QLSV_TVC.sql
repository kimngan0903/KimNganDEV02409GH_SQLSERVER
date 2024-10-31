CREATE DATABASE Sesson32_QLSV_TVC﻿
GO
  
USE Sesson32_QLSV_TVC﻿
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

--- BÀI 1: Viết những truy vấn lọc và sắp xếp dữ liệu
--- 1. Cho biết danh sách các môn học gồm các thông tin sau: Mã môn học, Tên môn học, Số tiết
Select * from MonHoc
GO

Select MaMH as [Mã môn học], TenMH as [Tên môn học], SoTiet [Số tiết]
From MonHoc
GO

--- 2. Liệt kê danh sách sinh viên, gồm các thông tin sau: Mã sinh viên, Họ sinh viên, Tên sinh viên, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã sinh viên tăng dần
Select MaSV as 'Mã sinh viên', HoSV as [Họ sinh viên]
	, TenSV as [Tên sinh viên], HocBong [Học bổng]
From SinhVien
Order by MaSV ASC
GO

--- 3. Danh sách các sinh viên, gồm các thông tin sau: Mã sinh viên, Tên sinh viên, Phái, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự của tên
Select MaSV, TenSV, Phai, NgaySinh
From SinhVien
Order by TenSV ASC

--- 4. Thông tin các sinh viên gồm: Họ tên sinh viên, Ngày sinh, Học bổng. Thông tin sẽ được sắp xếp theo thứ tự ngày sinh tăng dần và học bổng giảm dần
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	 , NgaySinh as [Ngày sinh]
	 , HocBong as [Học bổng]
From SinhVien
Order by NgaySinh ASC, 3 DESC

--- 5. Danh sách các môn học có tên bắt đầu bằng chữ T, gồm các thông tin
Select MaMH, TenMH, SoTiet
From MonHoc
Where TenMH Like N'T%'
GO

--- 6. Liệt kê danh sách những sinh viên có chữ cái cuối cùng trong tên là i, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Phái
Select [HoSV], [TenSV], [Phai], [NgaySinh]
From SinhVien
Where TenSV Like N'%i'
GO

--- 7. Danh sách những khoa có ký tự thứ 2 của tên khoa có chứa chữ N, gồm các thông tin: Mã khoa, Tên khoa
Select MaKH, TenKH
From Khoa
Where TenKH Like N'_N%'
GO

--- 8. Liệt kê những sinh viên mà họ có chứa chữ Thị
Select *
From SinhVien
Where HoSV Like N'%thị%'
GO

--- 9. Cho biết danh sách những sinh viên ký tự đầu tiên của tên nằm trong khoảng từ a đến m, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, Phái, Học bổng.
Select MaSV, HoSV, TenSV, Phai, HocBong
From SinhVien
Where TenSV Like N'[a-m]%'
GO

--- 10. Cho biết danh sách những sinh viên mà tên có chứa ký tự nằm trong khoảng từ a đến m, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Nơi sinh, Học bổng. Danh sách được sắp xếp tăng dần theo họ tên sinh viên.
Select MaSV, HoSV + ' ' + TenSV as [Họ tên sinh viên], NgaySinh, NoiSinh, HocBong
From SinhVien
Where TenSV Like N'%[a-m]%'
Order by 2 ASC
GO

--- 11. Cho biết danh sách các sinh viên của khoa Anh văn, gồm các thông tin sau: Mã sinh viên, Họ tên sinh viên, Ngày sinh, Mã khoa.
Select MaSV, HoSV + ' ' + TenSV as [Họ tên sinh viên], NgaySinh, MaKH
From SinhVien
Where MaKH = 'AV'
GO

--- 12. Liệt kê danh sách sinh viên của khoa TH, gồm các thông tin sau: Mã sinh viên, Họ tên sinh viên, Ngày sinh. Danh sách sẽ được sắp xếp theo thứ tự Ngày sinh giảm dần.
Select MaSV, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, Convert(Char(10), NgaySinh, 103) as [Ngày sinh]
	, MaKH
From SinhVien
Where MaKH = 'TH'
Order by NgaySinh DESC
GO

--- 13. Cho biết danh sách các sinh viên có học bổng lớn hơn 500,000, gồm các thông c bồng ló tin: Mã sinh viên, Họ tên sinh viên, Mã khoa, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự Mã khoa giảm dần.
Select MaSV, HoSV, TenSV, MaKH, HocBong
From SinhVien
Where HocBong > 500000
Order by MaKH DESC
GO

--- 14. Liệt kê danh sách sinh viên sinh vào ngày 20/12/1987, gồm các thông tin: Họ tên sinh viên, Mã khoa, Học bổng.
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, MaKH
	, HocBong
	, Convert(Char(10), NgaySinh, 103) as [Ngày sinh]
From SinhVien
Where Convert(Char(10), NgaySinh, 103) = '20/12/1987'
GO

Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, MaKH
	, HocBong
	, Convert(Char(10), NgaySinh, 103) as [Ngày sinh]
From SinhVien
Where Day(Ngaysinh) = 20 and Month(NgaySinh) = 12 and Year(NgaySinh) = 1987
GO

--- 15. Cho biết các sinh viên sinh sau ngày 20/12/1977, gồm các thông tin: Họ tên sinh viên, Ngày sinh, Nơi sinh, Học bổng. Danh sách sẽ được sắp xếp theo thứ tự ngày sinh giảm dần.
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, MaKH
	, HocBong
	, Convert(Char(10), NgaySinh, 103) as [Ngày sinh]
From SinhVien
Where Convert(Char(10), NgaySinh, 103) > '20/12/1987'
Order by NgaySinh DESC
GO

--- 16. Liệt kê các sinh viên có học bổng lớn hơn 100,000 và sinh ở Tp HCM, gồm các thông tin: Họ tên sinh viên, Mã khoa, Nơi sinh, Học bổng.
Select *
From SinhVien
Where HocBong > 100000 and NoiSinh Like N'%Tp HCM%'
GO

--- 17. Danh sách các sinh viên của khoa Anh văn và khoa Triết, gồm các thông tin: Mã sinh viên, Mã khoa, Phái.
Select *
From SinhVien
Where MaKH = 'AV' or MaKH = 'TR'
GO

Select *
From SinhVien
Where MaKH IN ('AV', 'TR')
GO
--- 18. Cho biết những sinh viên có ngày sinh từ ngày 01/01/1986 đến ngày 05/06/1992, gồm các thông tin: Mã sinh viên, Ngày sinh, Nơi sinh, Học bổng.
Select MaSV, NgaySinh, NoiSinh, HocBong
From SinhVien
Where NgaySinh Between '1986-01-01' And '1992-06-05'
GO

--- 19. Danh sách những sinh viên có học bổng từ 200,000 đến 800,000, gồm các thông tin: Mã sinh viên, Ngày sinh, Phái, Mã khoa.
Select MaSV, NgaySinh, Phai, MaKH
From SinhVien
Where HocBong Between 200000 and 800000
GO

--- 20. Cho biết những môn học có số tiết lớn hơn 40 và nhỏ hơn 60, gồm các thông tin: Mã môn học, Tên môn học, Số tiết.
Select MaMH, TenMH, Sotiet
From MonHoc
Where Sotiet > 40 and Sotiet < 60
GO

--- 21. Liệt kê những sinh viên nam của khoa Anh văn, gồm Họ tên sinh viên, Phái.
Select HoSV + ' ' + TenSV as [Họ tên sinh viên], Phai
From SinhVien
Where Phai = '0' and MaKH = 'AV'
GO

--- 22. Danh sách sinh viên có nơi sinh ở Hà Nội và ngày sinh sau ngày 01/01/1990, gồm các thông tin: Họ sinh viên, Tên sinh viên, Nơi sinh, Ngày sinh.
Select HoSV, TenSV, NoiSinh, NgaySinh
From SinhVien
Where NoiSinh LIKE N'Hà Nội' and NgaySinh > '1990-01-01'
GO

--- 23. Liệt kê những sinh viên nữ, tên có chứa chữ N.
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
From SinhVien
Where Phai = '1' and TenSV Like N'%N%'
GO

--- 24. Danh sách các nam sinh viên khoa Tin Học có ngày sinh sau ngày 30/5/1986.
SELECT *
FROM SinhVien
WHERE Phai = '0' and MaKH = 'TH' AND NgaySinh > '1986-05-30';
GO

--- 25. Liệt kê danh sách sinh viên gồm các thông tin sau: Họ và tên sinh viên, Giới tính, Ngày sinh. Trong đó Giới tính hiển thị ở dạng Nam/Nữ tuỳ theo giá trị của field Phai là True hay False.
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, CASE WHEN Phai = '0' THEN N'Nam' ELSE N'Nữ' END AS GioiTinh
	, NgaySinh as [Ngày sinh]
From SinhVien
GO

--- 26. Cho biết danh sách sinh viên gồm các thông tin sau: Mã sinh viên, Tuổi, Nơi sinh, Mã khoa. Trong đó Tuổi sẽ được tính bằng cách lấy năm hiện hành trừ cho năm sinh.
Select MaSV
	 , YEAR(GETDATE()) - YEAR(NgaySinh) as [Tuổi]
     , NoiSinh as [Nơi sinh]
     , MaKH as [Mã khoa]
From SinhVien
GO

--- 27. Cho biết những sinh viên có tuổi lớn hơn 20, thông tin gồm: Họ tên sinh viên, Tuổi, Học Bổng.
Select HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, YEAR(GETDATE()) - YEAR(NgaySinh) as [Tuổi]
	, HocBong as [Học bổng]
From SinhVien
Where YEAR(GETDATE()) - YEAR(NgaySinh) > 20
GO

--- 28. Danh sách những sinh viên có tuổi từ 20 đến 30, thông tin gồm: Họ tên sinh viên, Tuổi, Tên khoa
Select HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, YEAR(GETDATE()) - YEAR(NgaySinh) as [Tuổi]
	, TenKH as [Tên khoa]
From SinhVien join Khoa on SinhVien.MaKH = Khoa.MaKH
Where YEAR(GETDATE()) - YEAR(NgaySinh) between 20 and 30
GO

--- BÀI 2: Sử dụng hàm trong truy vấn dữ liệu
--- 1. Liệt kê danh sách sinh viên gồm các thông tin sau: Họ và tên sinh viên, Giới tính, Tuổi, Mã khoa. Trong đó Giới tính hiển thị ởdạng Nam/Nữ tuỳ theo giá trị của field Phai là True hay False, Tuổi sẽ được tính bằng cách lấy năm hiện hành trừ cho năm sinh. Danh sách sẽ được sắp xếp theo thứ tự Tuổi giảm dần
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, CASE WHEN Phai = '0' THEN N'Nam' ELSE 'Nu' END as [Giới tính]
	, YEAR(GETDATE()) - YEAR(NgaySinh) as [Tuổi]
	, MaKH
From SinhVien
Order by [Tuổi] DESC
GO

--- 2. Danh sách sinh viên sinh vào tháng 2 năm 1994, gồm các thông tin: Họ tên sinh viên, Phái, Ngày sinh. Trong đó, Ngày sinh chỉ lấy giá trị ngày của NGAYSINH 
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, CASE WHEN Phai = '0' THEN 'Nam' ELSE 'Nu' END AS [Phái]
	, Day(NgaySinh) as [Ngày sinh]
From SinhVien
Where Month(NgaySinh) = 2 and Year(NgaySinh) = 1994
GO

--- 3. Sắp xếp dữ liệu giảm dần theo cột Ngày sinh
Select *
From SinhVien
Order by NgaySinh DESC
GO 

--- 4.Cho biết thông tin về mức học bổng của các sinh viên, gồm: Mã sinh viên, Phái, Mã khoa, Mức học bổng. Trong đó, mức học bổng sẽ hiển thị là “Học bổng cao" nếu giá trị của field học bổng lớn hơn 500,000 và ngược lại hiển thị là “Mức trung bình"
Select MaSV
	, CASE WHEN Phai = '0' THEN 'Nam' ELSE 'Nu' END AS [Phái]
	, MaKH as [Mã khoa]
	, CASE WHEN HocBong > 500000 THEN N'Học bổng cao' ELSE N'Mức trung bình' END AS [Mức học bổng]
From SinhVien
GO

--- 5. Cho biết điểm thi của các sinh viên, gồm các thông tin: Họ tên sinh viên, Mã môn học, Điểm. Kết quả sẽ được sắp theo thứ tự Họ tên sinh viên và mã môn học tăng dần
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, MaMH as [Mã môn học]
	, Diem as [Điểm]
From Ketqua join SinhVien on Ketqua.MaSV = SinhVien.MaSV
Order by HoSV + ' ' + TenSV ASC, MaMH ASC
GO

--- 6. Danh sách sinh viên của khoa Anh văn, điều kiện lọc phải sử dụng tên khoa, gồm các thông tin sau: Họ tên sinh viên, Giới tính, Tên khoa. Trong đó, Giới tính sẽ hiển thị dạng Nam/Nữ
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, CASE WHEN Phai = '0' THEN 'Nam' ELSE 'Nu' END AS [Giới tính]
	, TenKH as [Tên khoa]
From SinhVien join Khoa on SinhVien.MaKH = Khoa.MaKH
Where TenKH Like N'Anh Văn'
GO

--- 7. Liệt kê bảng điểm của sinh viên khoa Tin Học, gồm các thông tin: Tên khoa, Họ tên sinh viên, Tên môn học, Số tiết, Điểm
SELECT TenKH as [Tên khoa]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenMH as [Tên môn học]
	, SoTiet as [Số tiết]
	, Diem as [Điểm]
FROM SinhVien 
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE TenKH LIKE N'Tin học'
GO

--- 8. Kết quả học tập của sinh viên, gồm các thông tin: Họ tên sinh viên, Mã khoa, Tên môn học, Điểm thi, Loại. Trong đó, Loại sẽ là Giỏi nếu điểm thi > 8, từ 6 đến 8 thì Loại là Khá, nhỏ hơn 6 thì loại là Trung Bình
SELECT HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, MaKH as [Mã khoa]
	, TenMH as [Tên môn học]
	, Diem as [Điểm]
     , CASE 
           WHEN Diem > 8 THEN 'Gioi' 
           WHEN Diem BETWEEN 6 AND 8 THEN 'Kha'
           ELSE 'Trung Binh' 
       END as [Loại]
FROM SinhVien 
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH;
GO

--- BÀI 3: Tính toán thống kê dữ liệu
--- 1. Cho biết trung bình điểm thi theo từng môn, gồm các thông tin: Mã môn, Tên môn, Trung bình điểm thi
SELECT Ketqua.MaMH, TenMH, AVG(Ketqua.Diem) AS [Trung bình điểm thi]
FROM Ketqua JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
GROUP BY Ketqua.MaMH, TenMH
GO

--- 2. Danh sách số môn thi của từng sinh viên, gồm các thông tin: Họ tên ên sinh sinh viên, viên, Tên khoa, Tổng số môn thi
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenKH as [Tên khoa]
	, Count(MaMH) as [Tổng số môn thi]
From SinhVien 
Join Ketqua on SinhVien.MaSV = Ketqua.MaSV
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by HoSV + ' ' + TenSV, TenKH
GO

--- 3. Tổng điểm thi của từng sinh viên, các thông tin: Tên sinh nh viên, viên, Tên Tên khoa, khoa, Phái, Phái, Tổng điểm thi
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, Khoa.TenKH as [Tên khoa]
	, Phai AS [Phái]
	, SUM(Diem) as [Tổng điểm thi]
From SinhVien
Join Ketqua on SinhVien.MaSV = Ketqua.MaSV
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by HoSV + ' ' + TenSV, Khoa.TenKH, Phai
GO

--- 4. Cho biết tổng số sinh viên ở mỗi khoa, gồm các thông tin: Tên khoa, Tổng số sinh viên
Select TenKH, COUNT(MaSV) as [Tổng số sinh viên]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by TenKH
GO

--- 5. Cho biết điểm cao nhất của mỗi sinh viên, gồm thông tin: Họ tên sinh viên, Điểm
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, MAX(Diem) as [Điểm cao nhất]
From Ketqua
Join SinhVien on Ketqua.MaSV = SinhVien.MaSV
Group by HoSV + ' ' + TenSV
GO

--- 6. Thông tin của môn học có số tiết nhiều nhất: Tên môn học, Số tiết
Select Top 1 TenMH as [Tên môn học]
	, SoTiet as [Số tiết]
From MonHoc
Order by Sotiet DESC
GO

--- 7. Cho biết học bổng cao nhất của từng khoa, gồm Mã khoa, Tên khoa, Học bổng cao nhất
Select Khoa.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
	, MAX(HocBong) as [Học bổng cao nhất]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by Khoa.MaKH, Khoa.TenKH
GO

--- 8. Cho biết điểm cao nhất của mỗi môn, gồm: Tên môn, Điểm cao nhất
Select TenMH as [Tên môn học]
	, MAX(Diem) as [Điểm cao nhất]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Group by TenMH
GO

--- 9. Thống kê số sinh viên học của từng môn, thông tin có: Mã môn, Tên môn, Số sinh viên đang học
Select Ketqua.MaMH as [Mã môn học]
	, MonHoc.TenMH as [Tên môn học]
	, COUNT(Ketqua.MaSV) as [Số sinh viên đang học]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Group by Ketqua.MaMH, MonHoc.TenMH
GO

--- 10. Cho biết môn nào có điểm thi cao nhất, gồmcác thông tin: Tên môn, Số tiết, Tên sinh viên, Điểm
Select Top 1 TenMH as [Tên môn học]
	, SoTiet as [Số tiết]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, Diem as [Điểm]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Join SinhVien on Ketqua.MaSV = SinhVien.MaSV
Order by Diem DESC
GO

--- 11. Cho biết khoa nào có đông sinh viên nhất, gồm Mã khoa, Tên khoa, Tổng số sinh viên
Select Top 1 SinhVien.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
	, COUNT(MaSV) as [Tổng số sinh viên]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by SinhVien.MaKH, TenKH
Order by COUNT(MaSV) DESC
GO

--- 12. Cho biết khoa nào có sinh viên lảnh học bổng cao nhất, gồm các thông tin sau: Tên khoa, Họ tên sinh viên, Học bổng
Select Top 1 TenKH as [Tên khoa]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, HocBong as [Học bổng]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Order by HocBong DESC
GO

--- 13. Cho biết sinh viên của khoa Tin học có có học bổng cao nhất, gồm các thông tin: Mã sinh viên, Họ sinh viên, Tên sinh viên, Tên khoa, Học bổng
Select Top 1 MaSV as [Mã sinh viên]
	, HoSV as [Họ sinh viên]
	, TenSV as[Tên sinh viên]
	, TenKH as [Tên khoa]
	, HocBong as [Học bổng]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Where TenKH Like N'Tin học'
Order by HocBong DESC
GO

--- 14. Cho biết sinh viên nào có điểm môn Cơ sở dữ liệu lớn nhất, gồm thông tin: Họ sinh viên, Tên môn, Điểm
Select Top 1 HoSV as [Họ sinh viên]
	, TenMH as [Tên môn học]
	, Diem as [Điểm]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Join SinhVien on Ketqua.MaSV = SinhVien.MaSV
Where TenMH Like N'Cơ sở dữ liệu'
Order by Diem DESC
GO

--- 15. Cho biết 3 sinh viên có điểm thi môn Đồ hoạthấp nhất, thông tin: Họ tên sinh viên, Tên khoa, Tên môn, Điểm
Select Top 3 HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenKH as [Tên khoa]
	, TenMH as [Tên môn học]
	, Diem as [Điểm]
From Ketqua
Join MonHoc on Ketqua.MaMH = MonHoc.MaMH
Join SinhVien on Ketqua.MaSV = SinhVien.MaSV
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Where TenMH Like N'Đồ họa ứng dụng'
Order by Diem ASC
GO

--- 16. Cho biết nào có nhiều sinh viên nữ nhất, gồm các thông tin: Mã khoa, Tên khoa
Select Top 1 SinhVien.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
	, COUNT(*) as [Số sinh viên nữ]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Where Phai = 1
Group by SinhVien.MaKH, TenKH
Order by COUNT(*) DESC
GO

--- 17. Thống kê sinh viên theo khoa, gồm các thông tin: Mã khoa, Tên khoa, Tổng số sinh viên, Tổng số sinh viên nữ
Select SinhVien.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
	, COUNT(*) as [Tổng số sinh viên]
	, SUM(CASE WHEN Phai = 1 THEN 0 ELSE 1 END) AS [Tổng số sinh viên nữ]
From SinhVien
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by SinhVien.MaKH, TenKH
GO

--- 18. Cho biết kết quả học tập của sinh viên, gồm Họ tên sinh viên, Tên khoa, Kết quả. Trong đó, Kết quả sẽ là Đậu nếu không có môn nào có điểm nhỏ hơn 4
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenKH as [Tên khoa]
	, CASE WHEN MIN(Diem) >= 4 THEN N'Đậu' ELSE N'Rớt' END AS [Kết quả]
From SinhVien
Join Ketqua on SinhVien.MaSV = Ketqua.MaSV
Join Khoa on SinhVien.MaKH = Khoa.MaKH
Group by HoSV + ' ' + TenSV, TenKH
GO

--- 19. Danh sách những sinh viên không có môn nào nhỏ hơn 4 điểm, gồm các thông tin: Họ tên sinh viên, Tên khoa, Phái
SELECT DISTINCT HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenKH as [Tên khoa]
	, Phai as [Phái]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE SinhVien.MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    WHERE Diem < 4
)
GO

--- 20. Cho biết danh sách những môn không có điểm thi nhỏ hơn 4, gồm các thông tin: Mã môn, Tên Môn
SELECT DISTINCT MonHoc.MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
FROM MonHoc
JOIN Ketqua ON MonHoc.MaMH = Ketqua.MaMH
WHERE MonHoc.MaMH NOT IN (
    SELECT MaMH
    FROM Ketqua
    WHERE Diem < 4
)
GO

--- 21. Cho biết những khoa không có sinh viên rớt, sinh viên rớt nếu điểm thi của môn nhỏ hơn 15, gồm các thông tin: Mã khoa, Tên khoa
SELECT DISTINCT Khoa.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
FROM Khoa
JOIN SinhVien ON Khoa.MaKH = SinhVien.MaKH
WHERE SinhVien.MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    WHERE Diem < 5
)
GO

--- 22. Thống kê số sinh viên đậu và số sinh viên rớt của từng môn, biết răng sinh viên rớt khi rớt khi điểm của môn nhỏ hơn 5, gồm có: Mã môn, Tên môn, Số sinh viên đậu, Số sinh viên rớt
SELECT Ketqua.MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
	, SUM(CASE WHEN Diem >= 5 THEN 1 ELSE 0 END) AS [Số sinh viên đậu]
	, SUM(CASE WHEN Diem < 5 THEN 1 ELSE 0 END) AS [Số sinh viên rớt]
FROM Ketqua
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
GROUP BY Ketqua.MaMH, TenMH;
GO

--- 23. Cho biết môn nào không có sinh viên rớt, gồm có: Mã môn, Tên môn
SELECT MonHoc.MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
FROM MonHoc
JOIN Ketqua ON MonHoc.MaMH = Ketqua.MaMH
WHERE Diem < 5
GROUP BY Monhoc.MaMH, TenMH
GO

--- 24. Danh sách sinh viên không có môn nào rớt, thông tin gồm: Mã sinh viên, Họ tên, Mã khoa
SELECT SinhVien.MaSV AS [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, MaKH AS [Mã khoa]
FROM SinhVien
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
WHERE SinhVien.MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    WHERE Diem < 5
)
GROUP BY SinhVien.MaSV, HoSV + ' ' + TenSV, MaKH
GO

--- 25. Danh sách các sinh viên rớt trên 2 môn, gồm Mã sinh viên, Họ sinh viên, Tên sinh viên, Mã khoa
SELECT Ketqua.MaSV as [Mã sinh viên]
	, HoSV as [Họ sinh viên]
	, TenSV as [Tên sinh viên]
	, MaKH as [Mã khoa]
FROM Ketqua
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
WHERE Diem < 5
GROUP BY Ketqua.MaSV, HoSV, TenSV, MaKH
HAVING COUNT(Diem) > 2
GO

--- 26. Cho biết danh sách những khoa có nhiều hơn 2 sinh viên, gồm Mã khoa, Tên khoa, Tổng số sinh viên của khoa
SELECT SinhVien.MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
	, COUNT(*) AS [Tổng số sinh viên]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY SinhVien.MaKH, TenKH
HAVING COUNT(*) > 2
GO

--- 27. Danh sách những sinh viên thi nhiều hơn 4 môn, gồm có Mã sinh viên, Họ tên sinh viên, Số môn thi 
SELECT Ketqua.MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, COUNT(MaMH) AS [Số môn thi]
FROM Ketqua
JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
GROUP BY Ketqua.MaSV, HoSV + ' ' + TenSV
HAVING COUNT(MaMH) > 4
GO

--- 28. Cho biết khoa có 2 sinh viên nam trở lên, thông tin gồm có: Mã khoa, Tên khoa, Tổng số sinh viên nam
SELECT SinhVien.MaKH as [Mã khoa]
	, TenKH as [Mã khoa]
	, COUNT(*) AS [Tổng số sinh viên nam]
FROM SinhVien
JOIN Khoa ON SinhVien.MAKH = Khoa.MaKH
WHERE Phai = 0
GROUP BY SinhVien.MaKH, TenKH
HAVING COUNT(*) >= 2
GO

--- 29. Danh sách những sinh viên có trung bình điểm thi lớn hơn 4, gồm các thông tin sau: Họ tên sinh viên, Tên khoa, Phái, Điểm trung bình các môn
SELECT HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, TenKH as [Tên khoa] 
    , Phai AS [Phái]
    , AVG(Diem) AS [Điểm trung bình]
FROM SinhVien
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
GROUP BY HoSV + ' ' + TenSV, TenKH, Phai
HAVING AVG(Diem) > 4
GO

--- 30. Cho biết trung bình điểm thi của từng môn, chỉ lấy môn nào có trung bình điểm thi lớn hơn 6, thông tin gồm có: Mã môn, Tên môn, Trung bình điểm
SELECT Ketqua.MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
	, AVG(Diem) AS [Trung bình điểm]
FROM Ketqua
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
GROUP BY Ketqua.MaMH, TenMH
HAVING AVG(Diem) > 6
GO

--- BÀI 4: Sử dụng tham số trong truy vấn
--- 1. Cho biết danh sách những sinh viên của một khoa, gồm: Mã sinh viên, Họ tên sinh viên, Giới tính, Tên khoa. Trong đó, giá trị mã khoa cần xem danh sách sinh viên sẽ được người dùng nhập khi thực thi câu truy vấn
DECLARE @MaKH NVARCHAR(10) = 'MãKhoaNgườiDùngNhập' 
SET @MaKH ='AV'
SELECT MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
    ,  CASE WHEN Phai = 0 THEN N'Nam' ELSE N'Nữ' END AS [Giới tính] 
    , TenKH as [Tên khoa]
FROM SinhVien
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE SinhVien.MaKH = @MaKH
GO

--- 2. Liệt kê danh sách sinh viên có điểm môn Cơ sở dữ liệu lớn hơn một giá trị bất kỳ do người sử dụng nhập vào khi thực thi câu truy vấn, thông tin gồm: Mã sinh viên, Họ tên sinh viên, Tên môn, Điểm
DECLARE @DiemLonHon FLOAT = 5.0
SELECT SinhVien.MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, TenMH as [Tên môn]
	, Diem as [Điểm]
FROM SinhVien
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
WHERE TenMH = N'Cơ sở dữ liệu' AND Diem > @DiemLonHon
GO

--- 3. Cho kết quả thi của các sinh viên theo môn, tên môn cần xem kết quả sẽ được nhập vào khi thực thi câu truy vấn. Thông tin hiển thị gồm: Mã sinh viên, Tên khoa, Tên môn, Điểm
DECLARE @TenMH NVARCHAR(50) = N'TênMônNgườiDùngNhập'
SET @TenMH = N'Đồ họa ứng dụng'
SELECT SinhVien.MaSV as [Mã sinh viên]
	, TenKH as [Tên khoa]
	, TenMH as [Tên môn học]
	, Diem as [Điểm]
FROM SinhVien
JOIN Ketqua ON SinhVien.MaSV = Ketqua.MaSV
JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
JOIN Khoa ON SinhVien.MaKH = Khoa.MaKH
WHERE TenMH = @TenMH
GO

--- BÀI 5: Truy vấn con
--- 1. Danh sách sinh viên chưa thi môn nào, thông tin gồm: Mã sinh viên, Mã khoa, Phái
SELECT MaSV as [Mã sinh viên]
	, MaKH as [Mã khoa]
	, Phai as [Phái]
FROM SinhVien
WHERE MaSV NOT IN (SELECT MaSV FROM Ketqua);
GO

--- 2. Danh sách những sinh viên chưa thi môn Cơ sở dữ liệu, gồm các thông tin: Mã sinh viên, Họ tên sinh viên, Mã khoa
SELECT MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, MaKH as [Mã khoa]
FROM SinhVien
WHERE MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
    WHERE TenMH = N'Cơ sở dữ liệu'
)
GO

--- 3. Cho biết môn nào chưa có sinh viên thi, gồm thông tin về: Mã môn, Tên môn, Số tiết
SELECT MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
	, SoTiet as [Số tiết]
FROM MonHoc
WHERE MaMH NOT IN (
	SELECT MaMH FROM Ketqua
)
GO

--- 4. Khoa nào chưa có sinh viên học
SELECT MaKH as [Mã khoa]
	, TenKH as [Tên khoa]
FROM Khoa
WHERE MaKH NOT IN (
	SELECT MaKH FROM SinhVien
)
GO

--- 5. Cho biết những sinh viên của khoa Anh văn chưa thi môn Cơ sở dữ liệu
SELECT MaSV as [Mã sinh viên]
	, HoSV + ' ' + TenSV as [Họ tên sinh viên] 
	, MaKH as [Mã khoa]
FROM SinhVien
WHERE MaKH = (SELECT MaKH FROM Khoa WHERE TenKH = N'Anh văn')
AND MaSV NOT IN (
    SELECT MaSV
    FROM Ketqua
    JOIN MonHoc ON Ketqua.MaMH = MonHoc.MaMH
    WHERE TenMH = N'Cơ sở dữ liệu'
)
GO

--- 6. Cho biết môn nào chưa có sinh viên khoa Lý thi
SELECT MaMH as [Mã môn học]
	, TenMH as [Tên môn học]
FROM MonHoc
WHERE MaMH NOT IN (
    SELECT MaMH
    FROM Ketqua
    JOIN SinhVien ON Ketqua.MaSV = SinhVien.MaSV
    WHERE MaKH = (SELECT MaKH FROM Khoa WHERE TenKH = N'Lý')
)
GO

--- 7. Danh sách những sinh viên có điểm thi môn Đồ hoạ nhỏ hơn điểm thi môn Đồ hoạ nhỏ nhất của sinh viên khoa Tin học

--- 8. Liệt kê những sinh viên sinh sau sinh viên có tuổi nhỏ nhất trong khoa Anh văn

--- 9. Cho biết những sinh viên có học bổng lớn hơn tổng học bổng của những sinh viên thuộc khoa Triết

--- 10. Danh sách sinh viên có nơi sinh cùng với nơi sinh của sinh viên có học bổng lớn nhất trong khoa Lý

--- 11. Danh sách sinh viên có điểm cao nhất ứng với mỗi môn, gồm thông tin: Mã sinh viên, Họ tên sinh viên, Tên môn, Điểm

--- 12. Các sinh viên có học bổng cao nhất theo từng khoa, gồm Mã sinh viên, Tên khoa, Học bổng

--- BÀI 6: Thêm dữ liệu vào CSDL
--- 1. Thêm một sinh viên mới gồm các thông tin sau:
	-- Mã sinh viên: C01
	-- Họ sinh viên: Lê Thành
	-- Tên sinh viên: Nguyên
	-- Phái: Nam
	-- Ngày sinh: 20/10/1980
	-- Nơi sinh: Thành phố Hồ Chí Minh
	-- Mã khoa: TH
	-- Học bổng: 850,000
INSERT INTO SinhVien (MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong)
VALUES ('C02', N'Lê Thành', N'Nguyên', 1, '1980-10-20', N'Thành phố Hồ Chí Minh', 'TH', 850.000);

--- 2. Thêm một môn học mới gồm các thông tin sau:
	-- Mã môn học: 06
	-- Tên môn học: Xử lý ảnh
	-- Số tiết: 45
INSERT INTO MonHoc (MaMH, TenMH, SoTiet)
VALUES ('10', N'Xử lý ảnh', 45);

--- 3. Thêm một khoa mới gồm các sau: thông19
	-- Mã khoa: CT
	-- Tên khoa: Công trình
INSERT INTO Khoa (MaKH, TenKH)
VALUES ('CT', N'Công trình');

--- 4. Thêm một sinh viên mới gồm các thông tin sau:
	-- Mã sinh viên: C02
	-- Họ sinh viên: Nguyễn Trần
	-- Tên sinh viên: Quân
	-- Phái: Nam
	-- Ngày sinh: lấy ngày hiện hiện
	-- Nơi sinh: Huế
	-- Mã khoa: CT
	-- Học bổng: 950,000
INSERT INTO SinhVien (MaSV, HoSV, TenSV, Phai, NgaySinh, NoiSinh, MaKH, HocBong)
VALUES ('C04', N'Nguyễn Trần', N'Quân', 1, GETDATE(), N'Huế', 'CT', 950.000);

--- 5. Thêm vào bảng kết quả gồm các thông tin sau:  
	-- Mã sinh viên: lấy tất cả những sinh viên của khoa Tin học  
	-- Mã môn học: 06  
	-- Điểm: 7  
INSERT INTO Ketqua(MaSV, MaMH, Diem)
SELECT MaSV, '10', 7
FROM SinhVien
WHERE MaKH = 'TH';

--- 6. Thêm vào bảng kết quả gồm các thông tin sau:  
	-- Mã sinh viên: C02  
	-- Mã môn học: lấy tất cả những môn học có trong bảng môn học  
	-- Điểm: 8 
INSERT INTO Ketqua(MaSV, MaMH, Diem)
SELECT 'C03', MaMH, 8
FROM MonHoc;

--- BÀI 7: Xoá thông tin trong cơ sở dữ liệu 
--- 1. Viết câu truy vấn để tạo bảng có tên DeleteTable gồm các thông tin sau: Mã  sinh viên, Họ tên sinh viên, Phái, Ngày sinh, Nơi sinh, Tên khoa, Học bổng 

--- 2. Xoá tất cả những sinh viên không có học bổng trong bảng DeleteTable  

--- 3. Xoá tất cả những sinh viên trong bảng DeleteTable sinh vào ngày 20/12/1987 

--- 4. Xoá tất cả những sinh viên trong bảng DeleteTable sinh trước tháng 3 năm 1987 

--- 5. Xoá tất cả những sinh viên nam của khoa Tin học trong bảng DeleteTable 

--- BÀI 8: Cập nhật thông tin trong cơ sở dữ liệu  
--- 1. Cập nhật số tiết của mônVăn phạm thành 45 tiết  

--- 2. Cập nhật tên của sinh viên Trần Thanh Mai thành Trần Thanh Kỳ 

--- 3. Cập nhật phái của sinh viên Trần Thanh Kỳ thành phái Nam  

--- 4. Cập nhật ngày sinh của sinh viên Trần thị thu Thuỷ thành 05/07/1990  

--- 5. Tăng học bổng cho tất cả những sinh viên của khoa Anh văn thêm 100,000  

--- 6. Cộng thêm 5 điểm môn Trí Tuệ Nhân Tạo cho các sinh viên thuộc khoa Anh văn.  • Điểm tối đa của môn là 10  

--- 7. Tăng học bổng cho sinh viên theo mô tả sau: 
	-- Nếu là phái nữ của khoa Anh văn thì tăng 100,000  
	-- Phái nam của khoa Tin học thì tăng 150,000  
	-- Những sinh viên khác thì tăng 50,000  

--- 8. Thay đỗi kết quả thi của các sinh viên theo mô tả sau:  
	-- Nếu sinh viên của khoa Anh văn thì tăng điểm môn Cơ sở dữ liệu lên 2  điểm  
	-- Nếu sinh viên của khoa Tin học thì giảm điểm môn Cơ sở dữ liệu xuống 1  điểm  
	-- Những sinh viên của khoa khác thì không thay đổi kết quả  
	-- Điểm nhỏ nhất là 0 và cao nhất là 10

select * from Ketqua
select * from MonHoc
select * from SinhVien
select * from Khoa

