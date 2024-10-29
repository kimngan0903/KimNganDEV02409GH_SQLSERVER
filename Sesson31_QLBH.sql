--- Tạo cơ sở dữ liệu
CREATE DATABASE Sesson31_PhamThiKimNgan
GO

--- Sử dụng CSDL
USE Sesson31_PhamThiKimNgan
GO

--- Tạo cấu trúc bảng VATTU(MaVTu, TenVTu, DvTinh, PhanTram)

CREATE TABLE VATTU 
(
	MaVTu char(4) not null 
		Constraint PK_VATTU primary key
	,TenVTu nvarchar(100) not null
		Constraint UQ_VATTU_TenVTu Unique
	,DvTinh nvarchar(10)
		Constraint DF_VATTU_DvTinh Default ''
	,PhanTram real
		Constraint CK_VATTU_PhanTram Check(PhanTram >= 0 and PhanTram <= 100)
)
GO

--- Tạo bảng NHACC (MaNhaCc, TenNhaCc, DiaChi, DienThoai)
CREATE TABLE NHACC 
(
	MaNhaCc char(3) not null primary key
	,TenNhaCc nvarchar(100) not null
	,DiaChi nvarchar(200) not null
	,DienThoai varchar(20) null default N'Chưa có'
)
GO

--- Tạo bảng DONDH (SoDh, NgayDh, MaNhaCc)
CREATE TABLE DONDH 
(
	SoDh char(4) not null primary key
	,NgayDh DateTime default GETDATE()
	,MaNhaCc char(3) References NHACC(MaNhaCc)
)
GO

--- Tạo bảng CTDONDH (SoDh, MaVTu, SlDat)
CREATE TABLE CTDONDH 
(
	SoDh char(4) not null references DONDH(SoDh)
	,MaVTu char(4) not null references VATTU(MaVTu)
	,SlDat int not null check(SlDat > 0)
	,Primary key(SoDH, MaVTu)
)
GO

---  Tạo bảng PNHAP(SoPn, NgayNhap, SoDh)
CREATE TABLE PNHAP
(
	SoPn char(4) not null primary key
	,NgayNhap datetime default GETDATE()
	,SoDh char(4) not null references DONDH(SoDh)
)
GO

--- Tạo bảng CTPNHAP(SoPn, MaVTu, SlDat, DgNhap)
CREATE TABLE CTPNHAP
(
	SoPn char(4) not null
	,MaVTu char(4) not null references VATTU(MaVTu)
	,SlNhap int not null check(SlNhap > 0)
	,DgNhap Money not null check(DgNhap > 0)
	,Primary key (SoPn, MaVTu)
)
GO

--- Tạo bảng PXUAT(SoPx, NgayXuat, TenKh)
CREATE TABLE PXUAT
(
	SoPx char(4) not null primary key
	,NgayXuat datetime default GETDATE()
	,TenKh nvarchar(100) not null
)
GO

--- Tạo bảng CTPXUAT(SoPx, MaVTu, SlXuat, DgXuat)
CREATE TABLE CTPXUAT
(
	SoPx char(4) not null references PXUAT(SoPx)
	,MaVTu char(4) not null references VATTU(MaVTu)
	,SlXuat int not null check(SlXuat > 0)
	,DgXuat Money not null check (DgXuat > 0)
	,Primary key (SoPx, MaVTu)
)
GO

--- Tạo bảng TONKHO(NamThang, MaVTu, SlDau, TongSLN, TongSLX, SlCuoi)
CREATE TABLE TONKHO
(
	NamThang char(6) not null
	,MaVTu char(4) not null references VATTU(MaVTu)
	,SlDau int not null check(SlDau > 0)
	,TongSLN int not null check(TongSLN > 0)
	,TongSLX int not null check(TongSLX > 0)
	,SLCuoi as SlDau + TongSLN - TongSLX
	,Primary key (NamThang, MaVTu)
)
GO

--- INSERT INTO CTDONDH
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D001', N'DD01', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D001', N'DD02', 15)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D002', N'VD02', 30)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D003', N'TV14', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D003', N'TV29', 20)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D004', N'TL90', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D005', N'TV14', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D005', N'TV29', 20)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D006', N'TV14', 10)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D006', N'TV29', 20)
INSERT [dbo].[CTDONDH] ([SoDh], [MaVTu], [SlDat]) VALUES (N'D006', N'VD01', 20)
GO

--- INSERT INTO CTPNHAP
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SlNhap], [DgNhap]) VALUES (N'N001', N'DD01', 8, 2500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SlNhap], [DgNhap]) VALUES (N'N001', N'DD02', 10, 3500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SlNhap], [DgNhap]) VALUES (N'N002', N'DD01', 2, 2500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SlNhap], [DgNhap]) VALUES (N'N002', N'DD02', 5, 3500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SlNhap], [DgNhap]) VALUES (N'N003', N'VD02', 30, 2500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SlNhap], [DgNhap]) VALUES (N'N004', N'TV14', 5, 2500000.0000)
INSERT [dbo].[CTPNHAP] ([SoPn], [MaVTu], [SlNhap], [DgNhap]) VALUES (N'N004', N'TV29', 12, 3500000.0000)
GO

--- INSERT INTO CTPXUAT
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X001', N'DD01', 2, 3500000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X002', N'DD01', 1, 3500000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X002', N'DD02', 5, 4900000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X003', N'DD01', 3, 3500000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X003', N'DD02', 2, 4900000.0000)
INSERT [dbo].[CTPXUAT] ([SoPx], [MaVTu], [SlXuat], [DgXuat]) VALUES (N'X003', N'VD02', 10, 3250000.0000)
GO

--- INSERT INTO DONDH
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCc]) VALUES (N'D001', CAST(N'2012-01-15T00:00:00.000' AS DateTime), N'C03')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCc]) VALUES (N'D002', CAST(N'2012-01-30T00:00:00.000' AS DateTime), N'C01')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCc]) VALUES (N'D003', CAST(N'2012-02-10T00:00:00.000' AS DateTime), N'C02')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCc]) VALUES (N'D004', CAST(N'2012-02-17T00:00:00.000' AS DateTime), N'C05')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCc]) VALUES (N'D005', CAST(N'2012-03-01T00:00:00.000' AS DateTime), N'C02')
INSERT [dbo].[DONDH] ([SoDh], [NgayDh], [MaNhaCc]) VALUES (N'D006', CAST(N'2012-03-12T00:00:00.000' AS DateTime), N'C05')
GO

--- INSERT INTO NHACC
INSERT [dbo].[NHACC] ([MaNhaCc], [TenNhaCc], [DiaChi], [DienThoai]) VALUES (N'C01', N'Lê Minh Thành', N'54, Kim Mã, Cầu Giấy, Hà Nội', N'8781024')
INSERT [dbo].[NHACC] ([MaNhaCc], [TenNhaCc], [DiaChi], [DienThoai]) VALUES (N'C02', N'Trần Quang Anh', N'145, Hùng Vương, Hải Dương', N'7698154')
INSERT [dbo].[NHACC] ([MaNhaCc], [TenNhaCc], [DiaChi], [DienThoai]) VALUES (N'C03', N'Bùi Hồng Phương', N'154/85, Lê Chân, Hải Phòng', N'9600125')
INSERT [dbo].[NHACC] ([MaNhaCc], [TenNhaCc], [DiaChi], [DienThoai]) VALUES (N'C04', N'Vũ Nhật Thắng', N'198/40 Hương Lộ 14 QTB HCM', N'8757757')
INSERT [dbo].[NHACC] ([MaNhaCc], [TenNhaCc], [DiaChi], [DienThoai]) VALUES (N'C05', N'Nguyễn Thị Thúy', N'178 Nguyễn Văn Luông Đà Lạt', N'7964251')
INSERT [dbo].[NHACC] ([MaNhaCc], [TenNhaCc], [DiaChi], [DienThoai]) VALUES (N'C07', N'Cao Minh Trung', N'125 Lê Quang Sung Nha Trang', N'Chua có')
GO

--- INSERT INTO PNHAP
INSERT [dbo].[PNHAP] ([SoPn], [NgayNhap], [SoDh]) VALUES (N'N001', CAST(N'2012-01-17T00:00:00.000' AS DateTime), N'D001')
INSERT [dbo].[PNHAP] ([SoPn], [NgayNhap], [SoDh]) VALUES (N'N002', CAST(N'2012-01-20T00:00:00.000' AS DateTime), N'D001')
INSERT [dbo].[PNHAP] ([SoPn], [NgayNhap], [SoDh]) VALUES (N'N003', CAST(N'2012-01-31T00:00:00.000' AS DateTime), N'D002')
GO

--- INSERT INTO PXUAT
INSERT [dbo].[PXUAT] ([SoPx], [NgayXuat], [TenKh]) VALUES (N'X001', CAST(N'2012-01-17T00:00:00.000' AS DateTime), N'Nguyễn Ngọc Phương Nhi')
INSERT [dbo].[PXUAT] ([SoPx], [NgayXuat], [TenKh]) VALUES (N'X002', CAST(N'2012-01-25T00:00:00.000' AS DateTime), N'Nguyễn Hồng Phương')
INSERT [dbo].[PXUAT] ([SoPx], [NgayXuat], [TenKh]) VALUES (N'X003', CAST(N'2012-01-31T00:00:00.000' AS DateTime), N'Nguyễn Tuấn Tú')
GO

--- INSERT INTO TONKHO
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SlDau], [TongSLN], [TongSLX]) VALUES (N'201201', N'DD01', 1, 10, 6)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SlDau], [TongSLN], [TongSLX]) VALUES (N'201201', N'DD02', 1, 15, 7)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SlDau], [TongSLN], [TongSLX]) VALUES (N'201201', N'VD02', 1, 30, 10)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SlDau], [TongSLN], [TongSLX]) VALUES (N'201202', N'DD01', 4, 1, 1)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SlDau], [TongSLN], [TongSLX]) VALUES (N'201202', N'DD02', 8, 1, 1)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SlDau], [TongSLN], [TongSLX]) VALUES (N'201202', N'TV14', 5, 1, 1)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SlDau], [TongSLN], [TongSLX]) VALUES (N'201202', N'TV29', 12, 1, 1)
INSERT [dbo].[TONKHO] ([NamThang], [MaVTu], [SlDau], [TongSLN], [TongSLX]) VALUES (N'201202', N'VD02', 20, 1, 1)
GO

--- INSERT INTO VATTU
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'DD01', N'Đầu DVD Hitachi 1 đĩa', N'Bộ', 40)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'DD02', N'Đầu DVD Hitachi 3 đĩa', N'Bộ', 40)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TL15', N'Tủ lạnh Sanyo 150 lit', N'Cái', 25)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TL90', N'Tủ lạnh Sanyo 90 lit', N'Cái', 20)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TV14', N'Tivi Sony 14 inches', N'Cái', 15)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TV21', N'Tivi Sony 21 inches', N'Cái', 10)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'TV29', N'Tivi Sony 29 inches', N'Cái', 10)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'VD01', N'Đầu VCD Sony 1 đĩa', N'Bộ', 30)
INSERT [dbo].[VATTU] ([MaVTu], [TenVTu], [DvTinh], [PhanTram]) VALUES (N'VD02', N'Đầu VCD Sony 3 đĩa', N'Bộ', 30)
GO
