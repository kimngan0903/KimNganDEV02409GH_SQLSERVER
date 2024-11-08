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
	,CategoryID bigint References CATEGORY
	,Contents ntext
	,Price decimal default '0'
	,Quantity int default '0'
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

--- Tạo bảng CONFIGURATIONS
CREATE TABLE CONFIGURATIONS
(
	ConfiguratonsID bigint not null primary key IDENTITY(3,1)
	,ConfiguratonsName nvarchar(500)
	,Notes ntext
	,IsDelete tinyint not null default '0'
	,IsActive tinyint not null default '1'
)
GO

--- Tạo bảng PRODUCT_CONFIG
CREATE TABLE PRODUCT_CONFIG
(
	ProductConfigID bigint not null primary key IDENTITY(4,1)
	,ProductID bigint not null 
	,ConfigID bigint
	,Value ntext
)
GO
