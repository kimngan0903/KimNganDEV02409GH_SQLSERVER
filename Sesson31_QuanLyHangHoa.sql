CREATE DATABASE Sesson31_QuanLyHangHoa
GO

USE Sesson31_QuanLyHangHoa
GO

--- Tạo bảng Category
CREATE TABLE CATEGORY
(
	CategoryID bigint not null primary key IDENTITY(1,1)
	,CategoryName nvarchar(500) not null
	,Notes ntext
	,Icon nvarchar(250)
	,ParentID bigint not null
	,Slug nvarchar(160) 
	,Meta_Title nvarchar(100) not null
	,Meta_Keyword nvarchar(500) not null
	,Meta_Description nvarchar(500) not null
	,Created_Date datetime default GETDATE()
	,Updated_Date datetime default GETDATE()
	,Created_By bigint default 'null'
	,Updated_by bigint default 'null'
	,IsDelete tinyint not null default '0'
	,IsActive tinyint not null default '1'
)
GO

--- Tạo bảng PRODUCT
CREATE TABLE PRODUCT
(
	ProductID bigint not null primary key IDENTITY(2,1)
	,ProductName nvarchar(500) not null
	,Description ntext 
	,Notes ntext
	,Image nvarchar(550)
)
GO