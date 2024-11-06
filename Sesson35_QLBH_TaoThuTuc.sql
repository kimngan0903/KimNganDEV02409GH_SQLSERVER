﻿------------Tao CSDL-------------------------------------------------
--Chu y thay doi thu muc luu tru file .mdf va .ldf

CREATE DATABASE Sesson35_QLBH_TaoThuTuc
	ON PRIMARY
	(	Name=QLBanHang_data,
		FileName='D:\QLBanHang.mdf',
		Size=5MB,
		MaxSize=50MB,
		FileGrowth=10%
	)
	LOG ON
	(	Name=QLBanHang_log,
		FileName='D:\QLBanHang.ldf',
		Size=1MB,
		MaxSize=5MB,
		FileGrowth=10%
	)
GO

USE Sesson35_QLBH_TaoThuTuc
------------------------------------------------------------------------------------------------
/*================================Tao cac bang trong CSDL=====================================*/
CREATE TABLE VATTU
(
	Mavtu char(4) not null,
	TenVTu nvarchar(100),
	Dvtinh nvarchar(10),
	Phantram real,
	Primary Key (Mavtu)
)
Go
------------------------------

CREATE TABLE NHACC
(
	MaNCC char(3) not null,
	TenNCC nvarchar(100),
	Diachi nvarchar(200),
	Dienthoai nvarchar(20),
	Primary Key (MaNCC)
)
GO
------------------------------
CREATE TABLE DONDH
(
	SoDH char(4) not null,
	NgayDH datetime,
	MaNCC char(3) not null,	
	Primary Key (SoDH)
	--Foreign Key (MaNCC) References NhaCC(ManCC) 
)
GO
------------------------------
CREATE TABLE CTDONDH
(
	SoDH char(4) not null,
	Mavtu char(4) not null,
	SlDat int,	
	Primary key (SoDH,Mavtu)
	--Foreign Key (SoDH) References DonDH(SoDH),
	--Foreign Key (MaVTu) References Vattu(MaVTu)
)
GO
------------------------------
CREATE TABLE PNHAP
(
	SoPn char(4) not null,
	NgayNhap Datetime not null,
	SoDH char(4) not null,	
	Primary key (SoPn)
	--Foreign Key (SoDH) References DonDH(SoDH)	
)
GO
------------------------------
CREATE TABLE CTPNHAP
(
	SoPn char(4) not null,
	Mavtu char(4) not null,
	SLNhap Int,	
	DGNhap Money,
	primary key (SoPn,Mavtu)
	--Foreign Key (SoPn) References PNhap(SoPn),
	--Foreign Key (MaVTu) References VaTTu(MaVTu)	
)
GO
------------------------------
CREATE TABLE PXUAT
(
	SoPx char(4) not null,
	NgayXuat Datetime not null,
	TenKH nvarchar(100) not null,	
	Primary key (SoPx)	
)
GO
------------------------------
CREATE TABLE CTPXUAT
(
	SoPx char(4) not null,
	Mavtu char(4) not null,
	SLXuat Int,	
	DGXuat Money,
	Primary key (SoPx,Mavtu)	
)
GO
------------------------------
CREATE TABLE TONKHO
(
	NamThang char(6) not null,
	Mavtu char(4) not null,
	SLDau Int,	
	TongSLN int,
	TongSLX int,
	SLCuoi as (SLDau+TongSLN-TongSLX),
	Primary key (NamThang,Mavtu)		
)
GO
-----------------------------------------------------------------------------
/*===================Tao cac CONSTRAINT - rang buoc toan ven=================*/

ALTER TABLE VATTU
	ADD
	CONSTRAINT UNQ_VATTU_Tenvt UNIQUE(Tenvtu),
	CONSTRAINT DEF_VATTU_Dvtinh DEFAULT '' For dvtinh,
	CONSTRAINT CHK_VATTU_Phantram CHECK(phantram between 0 And 100)
Go
------------------------------------------------------------------
ALTER TABLE NhaCC
	ADD
	CONSTRAINT UNQ_NHACC_TenNcc UNIQUE(Tenncc,diachi),	
	CONSTRAINT DEF_VATTU_Dienthoai DEFAULT N'Chưa có' For dienthoai
------------------------------------------------------------------
Go
ALTER TABLE DONDH
	ADD	
	CONSTRAINT Frk_DONDH_Mancc FOREIGN KEY(Mancc) REFERENCES Nhacc(mancc),
	CONSTRAINT DEF_DONDH_Ngaydh DEFAULT Getdate() For Ngaydh

Go
------------------------------------------------------------------
ALTER TABLE CTDONDH
	ADD	
	CONSTRAINT Frk_CTDONDH_sodh FOREIGN KEY(Sodh) REFERENCES Dondh(sodh),
	CONSTRAINT Frk_CTDONDH_Mavtu FOREIGN KEY(Mavtu) REFERENCES Vattu(Mavtu),	
	CONSTRAINT CHK_CTDONDH_sldat CHECK(Sldat>0)
Go
------------------------------------------------------------------
ALTER TABLE CTPNhap
	ADD	
	CONSTRAINT Frk_CTPNHAP_sopn FOREIGN KEY(sopn) REFERENCES Pnhap(sopn)  ON DELETE NO ACTION ON UPDATE CASCADE,
	CONSTRAINT Frk_CTPNHAP_Mavtu FOREIGN KEY(Mavtu) REFERENCES Vattu(Mavtu) ON DELETE NO ACTION ON UPDATE CASCADE,
	CONSTRAINT CHK_CTPNHAP_SlNhap CHECK(SlNhap>0),
	CONSTRAINT CHK_CTPNHAP_DgNhap CHECK(DgNhap>0)
Go
------------------------------------------------------------------
ALTER TABLE CTPXuat
	ADD	
	CONSTRAINT Frk_CTPPXUAT_sopx FOREIGN KEY(sopx) REFERENCES Pxuat(sopx),
	CONSTRAINT Frk_CTPPXUAT_Mavtu FOREIGN KEY(Mavtu) REFERENCES Vattu(Mavtu),			
	CONSTRAINT CHK_SlXuat_CTPXuat CHECK(SlXuat>0),
	CONSTRAINT CHK_DgXuat_CTPXuat CHECK(DgXuat>0)
Go
------------------------------------------------------------------
ALTER TABLE TONKHO
	ADD	
	CONSTRAINT Frk_TONKHO_Mavtu FOREIGN KEY(Mavtu) REFERENCES Vattu(Mavtu),				
	CONSTRAINT CHK_SlDau_CTPXuat CHECK(SlDau>=0),
	CONSTRAINT CHK_TongSLN_TONKHO CHECK(TongSLN>=0),
	CONSTRAINT CHK_TongSLX_TONKHO CHECK(TongSLX>=0),
	CONSTRAINT DEF_SlDau_CTPXuat DEFAULT 0 For SlDau,
	CONSTRAINT DEF_TongSLN_TONKHO DEFAULT 0 For TongSLN,
	CONSTRAINT DEF_TongSLX_TONKHO DEFAULT 0 For TongSLX
Go
-------------------------------------------------------------------------------------------------------------
/*================Tao cac CONSTRAINT khoa ngoai===============*/

-- Font ch÷:  .VnCentury Schoolbook
/*Du Lieu Bang Nha Cung Cap*/
INSERT INTO NHACC VALUES ('C01',N'Lê Minh Trí','54 Kim Mã, Ba Đình, Hà Nội','0983142346')
INSERT INTO NHACC VALUES ('C02',N'Phạm Văn Quang','145 Hàng Bài, Hoàn Kiếm, Hà Nội','0975415586')
INSERT INTO NHACC VALUES ('C03',N'Nguyễn Hồng Phương','154/85 Lê Lai Q7 HCM','08756757')
INSERT INTO NHACC VALUES ('C04',N'Đỗ Ánh Tuyết','198/40 Mai Dịch, Cầu Giấy, Hà Nội','9600125')
INSERT INTO NHACC VALUES ('C05',N'Lưu Minh Tú','178 Nguyễn Trãi, Thanh Xuân, Hà Nội','7964251')
INSERT INTO NHACC VALUES ('C06',N'Cao Bá Tuấn','125 Lạc Long Quân, Tây Hồ, Hà Nội','0985635768')
Go
------------------------------------------------------------------------
/*Du Lieu Bang VATTU*/
INSERT INTO VATTU VALUES ('DD01',N'Đầu đĩa DVD Hitachi',N'Bộ',40)
INSERT INTO VATTU VALUES ('DD02',N'Đầu đĩa DVD Sony',N'Bộ',40)
INSERT INTO VATTU VALUES ('TL15',N'Tủ lạnh Sanyo 150 lít',N'Chiếc',25)
INSERT INTO VATTU VALUES ('TL21',N'Tủ lạnh Sanyo 210 lít',N'Chiếc',20)
INSERT INTO VATTU VALUES ('TV40',N'Tivi SONY 40 inches',N'Chiếc',15)
INSERT INTO VATTU VALUES ('TV50',N'Tivi SAMSUNG 50 inches',N'Chiếc',10)
INSERT INTO VATTU VALUES ('TV32',N'Tivi LG 32 inches',N'Chiếc',10)
INSERT INTO VATTU VALUES ('MG01',N'Máy giặt Samsung',N'Chiếc',30)
INSERT INTO VATTU VALUES ('QD02',N'Quạt điện Media',N'Chiếc',30)
Go
------------------------------------------------------------------------
/*Du Lieu Bang DONDH*/
INSERT INTO DONDH VALUES('D001','01/15/2014','C03')
INSERT INTO DONDH VALUES('D002','01/30/2014','C01')
INSERT INTO DONDH VALUES('D003','02/10/2014','C02')
INSERT INTO DONDH VALUES('D004','02/17/2014','C05')
INSERT INTO DONDH VALUES('D005','03/01/2014','C02')
INSERT INTO DONDH VALUES('D006','03/12/2014','C05')
Go
------------------------------------------------------------------------
/*Du Lieu Bang PNHAP*/
INSERT INTO PNHAP VALUES('N001','01/17/2014','D001')
INSERT INTO PNHAP VALUES('N002','01/20/2014','D001')
INSERT INTO PNHAP VALUES('N003','01/31/2014','D002')
INSERT INTO PNHAP VALUES('N004','02/15/2014','D003')
Go
------------------------------------------------------------------------
/*Du Lieu Bang CTDONDH*/
INSERT INTO CTDONDH VALUES('D001','DD01',10)
INSERT INTO CTDONDH VALUES('D001','DD02',15)
INSERT INTO CTDONDH VALUES('D002','QD02',30)
INSERT INTO CTDONDH VALUES('D003','TV40',10)
INSERT INTO CTDONDH VALUES('D003','TV32',20)
INSERT INTO CTDONDH VALUES('D004','TL21',10)
INSERT INTO CTDONDH VALUES('D005','TV40',10)
INSERT INTO CTDONDH VALUES('D005','TV32',20)
INSERT INTO CTDONDH VALUES('D006','TV40',10)
INSERT INTO CTDONDH VALUES('D006','TV32',20)
INSERT INTO CTDONDH VALUES('D006','MG01',20)
Go
------------------------------------------------------------------------
/*Du Lieu Bang CTPNHAP*/
INSERT INTO CTPNHAP VALUES('N001','DD01',8 ,25)
INSERT INTO CTPNHAP VALUES('N001','DD02',10 ,35)
INSERT INTO CTPNHAP VALUES('N002','DD01', 2,25)
INSERT INTO CTPNHAP VALUES('N002','DD02', 5,35)
INSERT INTO CTPNHAP VALUES('N003','QD02', 30,25)
INSERT INTO CTPNHAP VALUES('N004','TV40', 5,25)
INSERT INTO CTPNHAP VALUES('N004','TV50', 12,35)

UPDATE  CTPNHAP SET dgnhap=dgNhap*100000
Go
------------------------------------------------------------------------
/*Du Lieu Bang PXUAT*/
INSERT INTO PXUAT VALUES('X001','01/17/2014',N'Lê Hoàng Anh Tuấn')
INSERT INTO PXUAT VALUES('X002','01/25/2014',N'Nguyễn Trần Lâm')
INSERT INTO PXUAT VALUES('X003','01/31/2014',N'Bùi Thị Thu Thủy')
Go
------------------------------------------------------------------------
/*Du Lieu Bang CTPXUAT*/
INSERT INTO CTPXUAT VALUES('X001','DD01',2 ,35)
INSERT INTO CTPXUAT VALUES('X002','DD01',1 ,35)
INSERT INTO CTPXUAT VALUES('X002','DD02', 5,49)
INSERT INTO CTPXUAT VALUES('X003','DD01', 3,35)
INSERT INTO CTPXUAT VALUES('X003','DD02', 2,49)
INSERT INTO CTPXUAT VALUES('X003','QD02', 10,32.5)

UPDATE  CTPXUAT SET dgxuat=dgxuat*100000
Go
------------------------------------------------------------------------
/*Du Lieu Bang TONKHO*/

INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201401','DD01',0,10,6 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201401','DD02',0,15,7 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201401','QD02',0,30,10 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201402','DD01',4,0,0 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201402','DD02',8,0,0 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201402','QD02',20,0,0 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201402','TV40',5,0,0 )
INSERT INTO TONKHO(Namthang,Mavtu,SLDau,TongSLN,TongSLX) VALUES('201402','TV32',12,0,0 )

--- Bài 1: Trong cơ sở dữ liệu quản lý bán hàng, tạo các thủ tục nội tại lấy dữ liệu từ bảng với các yêu cầu sau.
--- 1. Xây dựng thủ tục lấy ra toàn bộ các vật tư có trong bảng VATTU với tên spud_LayDanhsachVATTU, thủ tục này không có tham số nào. Hành động duy nhất trong thủ tục này đơn giản chỉ là một câu lệnh truy vấn SELECT * FROM VATTU có sắp xếp theo thứ tự tên vật tư từ từ A-Z.
CREATE PROCEDURE spud_LayDanhsachVATTU
AS
BEGIN
	--- Select all records from the VATTU table and order by the product name (assumed column is 'TenVatTu')
	SELECT *
	FROM VATTU
	ORDER BY TenVTu ASC    --- Sorting in ascending order (A-Z)
END
GO
EXEC sp_helptext 'spud_LayDanhsachVATTU'
EXEC spud_LayDanhsachVATTU

--- 2. Xây dựng thủ tục liệt kê các cột dữ liệu trong bảng NHACC với tên spud_LayDanhsach_NHACC, thủ tục này có một tham số là mancc có giá trị mặc định là NULL. Thủ tục thực hiện lấy toàn bộ các nhà cung cấp trong bảng NHACC nếu tham số mancc không được truyền giá trị, ngược lại, lấy ra thông tin nhà cung cấp với mã được truyền vào.
CREATE PROCEDURE spud_LayDanhsach_NHACC
	@mancc VARCHAR(10) = NULL  --- Thay đổi kiểu dữ liệu @mancc thành VARCHAR
AS
BEGIN
	IF @mancc IS NULL
	BEGIN
		SELECT * FROM NHACC
	END ELSE
	BEGIN SELECT * FROM NHACC WHERE mancc = @mancc
	END
END
GO
EXEC spud_LayDanhsach_NHACC
EXEC spud_LayDanhsach_NHACC @mancc = C04

--- 3. Xây dựng thủ tục liệt kê các cột dữ liệu trong hai bảng dữ liệu PXUAT và CTXUAT và có thêm một cột TENVTU trong bảng VATTU với tên là và có @ spud_PXU spud_PXUAT_BcaoPxuat gồm có 1 tham số vào là: Số phiếu xuất muốn lọc dữ liệu với giá trị mặc định là NULL. Tuy nhiên nếu lúc gọi thực hiện thủ tục mà không truyền giá trị số phiếu xuất vào thì xem như không lọc gì cả, khi đó thủ tục sẽ liệt kê tất cả các phiếu xuất đang có trong bảng PXUAT.

--- 4. Xây dựng thủ tục liệt kê các cột dữ liệu trong hai bảng dữ liệu PNHAP và CTNHAP và có thêm một cột TENVTU trong bảng VATTU với tên là spud_PNHAP_BcaoPNhap gồm có 1 tham số vào là: Số phiếu nhập muốn lọc dữ liệu với giá trị mặc định là NULL. Tuy nhiên nếu lúc gọi thực hiện thủ tục mà không truyền giá trị số phiếu nhập vào thì xem như không lọc gì cả, khi đó thủ tục sẽ liệt kê tất cả các phiếu nhập đang có trong bảng PNHAP.

--- 5. Xây dựng thủ tục liệt kê các cột dữ liệu trong bảng TONKHO có thể hiện thêm cột TENVTU trong bảng VATTU với tên spud_TONKHO_BcaoTonkho gồm có 1 tham số vào là: Năm tháng muốn lọc dữ liệu.

--- Bài 2: Trong cơ sở dữ liệu quản lý bán hàng, tạo các thủ tục nội tại cập nhật dữ liệu trong bảng VATTU. Các thủ tục này có kiểm tra các ràng buộc dữ liệu và thông báo ra các lỗi rõ ràng khi dữ liệu vi phạm các ràng buộc.
--- 1. Xây dựng thủ tục thêm mới dữ liệu vào bảng VATTU với tên spud_VATTU_Them gồm có 4 tham số vào chính là giá giá trị thêm mới cho các cột trong bảng VATTU: mã vật tư, tên vật tư, đơn vị tính và phần trăm. Trong đó cần kiểm tra các ràng buộc dữ liệu phải hợp lệ trước khi thực hiện lệnh INSERT INTO để thêm dữ liệu vào bảng VATTU.
	-- Mã vật tư phải chưa có trong bảng VATTU
	-- Tên vật tư phải duy nhất trong bảng VATTU
	-- Đơn vị tính mặc định là chuỗi rỗng
	-- 0<= Phần trăm <=100

--- 2. Xây dựng thủ tục xóa một vật tư có trong bảng VATTU với tên spud_VATTU_Xoa gồm có 1 tham số vào chính là mã vật tư cần xóa. Trong đó cần kiểm tra ràng buộc dữ liệu trước khi thực hiện lệnh DELETE để xóa dữ liệu trong bảng VATTU.
	-- Mã vật tư phải chưa có trong bảng CTDONDH
	-- Mã vật tư phải chưa có trong bảng CTPNHAP
	-- Mã vật tư phải chưa có trong bảng CTPXUAT
	-- Mã vật tư phải chưa có trong bảng TONKHO

--- 3. Xây dựng thủ tục sửa đổi vật tư trong bảng VATTU với tên spud_VATTU_Sua gồm có tối đa 4 tham số vào chính là giá trị cần thay đổi của các cột trong bảng VATTU (trừ cột mã vật tư): mã vật tư, tên vật tư, đơn vị tính và phần trăm. Trong thủ tục chỉ thực hiện lệnh UPDATE SET để cập nhật dữ liệu vào l bảng VATTU với các giá trị tương ứng.
CREATE PROCEDURE spud_VATTU_Sua
	@mavtu VARCHAR(10),
	@tenvtu NVARCHAR(100) = NULL,
	@donvitinh NVARCHAR(50) = NULL,
	@phantram DECIMAL(5,2) = NULL
AS
BEGIN
	--- Cập nhật thông tin vật tư trong bảng VATTU
	UPDATE VATTU
	SET
		tenvtu = COALESCE(@tenvtu, tenvtu), --- Nếu tham số NULL thì giữ nguyên giá trị cũ
		dvtinh = COALESCE(@donvitinh, dvtinh),  --- Tương tự với đơn vị tính
		phantram = COALESCE(@phantram, phantram)	--- Tương tự với phần trăm
	WHERE mavtu = @mavtu
END
-- VD: Sửa đổi tên vật tư, đơn vị tính và phần trăn của vật tư có mã 'V001'
EXEC spud_VATTU_Sua @mavtu = 'V001', @tenvtu = 'Vật tư mới', @donvitinh = 'kg', @phantram = 10.50;
-- VD: Chỉ sửa phần trăm của vật tư có mã 'V002'
EXEC spud_VATTU_Sua @mavtu = 'V002', @phantram = 15.00;
-- VD: Không thay đổi bất kỳ giá trị nào, chỉ cần sửa tên vật tư
EXEC spud_VATTU_Sua @mavtu = 'V003', @tenvtu = 'Vạt tư đã thay đổi';

--- Bài 3: Trong cơ sở dữ liệu QLBanHang (quản lý bán hàng), tạo các thủ tục nội tại tính toán với các yêu cầu sau.

--- 1. Xây dựng thủ tục tính thành tiền của vật tư trong một đơn đặt hàng với tên spud_DONDH_TinhThanhtien gồm có 2 tham số vào là: Số đặt hàng và Mã vật tư, 1 tham số ra là: Thành tiền đặt hàng của một vật tư theo số đặt hàng.

--- 2. Xây dựng thủ tục tính tổng số lượng hàng đã nhập với tên spud_PNHAP_TinhTongSLNHang gồm có 2 tham số vào là: Số đặt hàng và Mã vật tư, 1 tham số ra là: Tổng số lượng đã nhập hàng của một vật tư theo một số đặt hàng.

--- 3. Xây dựng thủ tục tính số lượng đầu kỳ của một vật tư với tên spud_TONKHO_TinhSLDau gồm có 2 tham số vào là: Năm tháng và Mã vật tư, 1 tham số ra là: Số lượng đầu kỳ của một vật tư theo năm tháng truyền vào.

--- 4. Xây dựng thủ tục tính tổng số lượng nhập và tổng số lượng xuất của một vật tư với tên spud_TONKHO_TinhTongNX gồm có 2 tham số vào là: Năm tháng và Mã vật tư, 2 tham số ra là: Tổng số lượng nhập và Tổng số lượng xuất của một vật tư theo năm tháng truyền vào. Sử dụng lại các thủ tục spud_TONKHO_TinhSLDau, spud_TONKHO_TinhTongNX của câu c và d để xây dựng thủ tục tính số lượng tồn kho cuối kỳ của một vật tư với tên spud_TONKHO_TinhSLCuoi gồm có 2 tham số vào là: Năm tháng và Mã vật tư, 1 tham số ra là: Số lượng cuối kỳ của một vật tư theo năm tháng truyền vào.