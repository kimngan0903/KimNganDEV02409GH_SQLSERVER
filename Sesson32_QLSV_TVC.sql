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
Where NoiSinh = 'Hà Nội' and NgaySinh > '1990-01-01'
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
	, CASE WHEN Phai = '0' THEN 'Nam' ELSE 'Nu' END AS GioiTinh
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
	, CASE WHEN Phai = '1' THEN 'Nam' ELSE 'Nu' END as [Giới tính]
	, YEAR(GETDATE()) - YEAR(NgaySinh) as [Tuổi]
	, MaKH
From SinhVien
Order by [Tuổi] DESC
GO

--- 2. Danh sách sinh viên sinh vào tháng 2 năm 1994, gồm các thông tin: Họ tên sinh viên, Phái, Ngày sinh. Trong đó, Ngày sinh chỉ lấy giá trị ngày của NGAYSINH 
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, CASE WHEN Phai = '1' THEN 'Nam' ELSE 'Nu' END AS [Phái]
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
	, CASE WHEN Phai = '1' THEN 'Nam' ELSE 'Nu' END AS [Phái]
	, MaKH as [Mã khoa]
	, CASE WHEN HocBong > 500000 THEN 'Hoc bong cao' ELSE 'Muc trung binh' END AS [Mức học bổng]
From SinhVien
GO

--- 5. Cho biết điểm thi của các sinh viên, gồm các thông tin: Họ tên sinh viên, Mã môn học, Điểm. Kết quả sẽ được sắp theo thứ tự Họ tên sinh viên và mã môn học tăng dần
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, MaMH as [Mã môn học]
	, Diem as [Điểm]
From Ketqua join SinhVien on Ketqua.MaSV = SinhVien.MaSV
Order by [Họ tên sinh viên] ASC, MaMH ASC
GO

--- 6. Danh sách sinh viên của khoa Anh văn, điều kiện lọc phải sử dụng tên khoa, gồm các thông tin sau: Họ tên sinh viên, Giới tính, Tên khoa. Trong đó, Giới tính sẽ hiển thị dạng Nam/Nữ
Select HoSV + ' ' + TenSV as [Họ tên sinh viên]
	, CASE WHEN Phai = '1' THEN 'Nam' ELSE 'Nu' END AS [Giới tính]
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

--- 2. Danh sách số môn thi của từng sinh viên, gồm các thông tin: Họ tên ên sinh sinh viên, viên, Tên khoa, Tổng số môn thi

--- 3. Tổng điểm thi của từng sinh viên, các thông tin: Tên sinh nh viên, viên, Tên Tên khoa, khoa, Phái, Phái, Tổng điểm thi

--- 4. Cho biết tổng số sinh viên ở mỗi khoa, gồm các thông tin: Tên khoa, Tổng số sinh viên

--- 5. Cho biết điểm cao nhất của mỗi sinh viên, gồm thông tin: Họ tên sinh viên, Điểm

--- 6. Thông tin của môn học có số tiết nhiều nhất: Tên môn học, Số tiết

--- 7. Cho biết học bổng cao nhất của từng khoa, gồm Mã khoa, Tên khoa, Học bổng cao nhất

--- 8. Cho biết điểm cao nhất của mỗi môn, gồm: Tên môn, Điểm cao nhất

--- 9. Thống kê số sinh viên học của từng môn, thông tin có: Mã môn, Tên môn, Số sinh viên đang học

--- 10. Cho biết môn nào có điểm thi cao nhất, gồmcác thông tin: Tên môn, Số tiết, Tên sinh viên, Điểm

--- 11. Cho biết khoa nào có đông sinh viên nhất, gồm Mã khoa, Tên khoa, Tổng số sinh viên

--- 12. Cho biết khoa nào có sinh viên lảnh học bổng cao nhất, gồm các thông tin sau: Tên khoa, Họ tên sinh viên, Học bổng

--- 13. Cho biết sinh viên của khoa Tin học có có học bổng cao nhất, gồm các thông tin: Mã sinh viên, Họ sinh viên, Tên sinh viên, Tên khoa, Học bổng

--- 14. Cho biết sinh viên nào có điểm môn Cơ sở dữ liệu lớn nhất, gồm thông tin: Họ sinh viên, Tên môn, Điểm

--- 15. Cho biết 3 sinh viên có điểm thi môn Đồ hoạthấp nhất, thông tin: Họ tên sinh viên, Tên khoa, Tên môn, Điểm

--- 16. Cho biết nào có nhiều sinh viên nữ nhất, gồm các thông tin: Mã khoa, Tên khoa

--- 17. Thống kê sinh viên theo khoa, gồm các thông tin: Mã khoa, Tên khoa, Tổng số sinh viên, Tổng số sinh viên nữ

--- 18. Cho biết kết quả học tập của sinh viên, gồm Họ tên sinh viên, Tên khoa, Kết quả. Trong đó, Kết quả sẽ là Đậu nếu không có môn nào có điểm nhỏ hơn 4

--- 19. Danh sách những sinh viên không có môn nàonhỏ hơn 4 điểm, gồm các thông tin: Họ tên sinh viên, Tên khoa, Phái

--- 20. Cho biết danh sách những môn không có điểm thi nhỏ hơn 4, gồm các thông tin: Mã môn, Tên Môn

--- 21. Cho biết những khoa không có sinh viên rớt, sinh viên rớt nếu điểm thi của môn nhỏ hơn 15, gồm các thông tin: Mã khoa, Tên khoa

--- 22. Thống ng kê số sinh viên đậu và số sinh viên rớt của từng môn, biết răng sinh viên rớt khi rớt khi điểm của môn nhỏ hơn 5, gồm có: Mã môn, Tên môn, Số sinh viên đậu, Số sinh viên rớt

--- 23. Cho biết môn nào không có sinh viên rớt, gồm có: Mã môn, Tên môn

--- 24. Danh sách sinh viên không có môn nào rớt, thông tin gồm: Mã sinh viên, Họ tên, Mã khoa

--- 25. Danh sách các sinh viên rớt trên 2 môn, gồm Mã sinh viên, Họ sinh viên, Tên sinh viên, Mã khoa

--- 26. Cho biết danh sách những khoa có nhiều hơn 10 sinh viên, gồm Mã khoa, Tên khoa, Tổng số sinh viên của khoa

--- 27. Danh sách những sinh viên thi nhiều hơn 4 môn, gồm có Mã sinh viên, Họ tên sinh viên, Số môn thi 

--- 28. Cho biết khoa có 5 sinh viên nam trở lên, thông tin gồm có: Mã khoa, Tên khoa, Tổng số sinh viên nam

---29. Danh sách những sinh viên có trung bình điểm thi lớn hơn 4, gồm các thông tin sau: Họ tên sinh viên, Tên khoa, Phái, Điểm trung bình các môn

--- 30. Cho biết trung bình điểm thi của từng môn, chỉ lấy môn nào có trung bình điểm thi lớn hơn 6, thông tin gồm có: Mã môn, Tên môn, Trung bình điểm

--- BÀI 4: Sử dụng tham số trong truy vấn
--- 1. Cho biết danh sách những sinh viên của một khoa, gồm: Mã sinh viên, Họ tên sinh viên, Giới tính, Tên khoa. Trong đó, giá trị mã khoa cần xem danh sách sinh viên sẽ được người dùng nhập khi thực thi câu truy vấn

--- 2. Liệt kê danh sách sinh viên có điểm môn Cơ sở dữ liệu lớn hơn một giá trị bất kỳ do người từ tà thi âu tuy vấn, tôn tin gồm: Mã sinh viên, Họ tên sinh viên, Tên môn, Điểm

--- 3. Cho kết quả thi của các sinh viên theo môn, tên môn cần xem kết quả sẽ được nhập vào khi thực thi câu truy vấn. Thông tin hiển thị gồm: Mã sinh viên, Tên

select * from Ketqua
select * from MonHoc
select * from SinhVien
select * from Khoa

