create table Departments
(
	DeptID varchar(20) PRIMARY KEY,
	name nvarchar(200),
	office nvarchar(100)
);
create table Employees
(
	EmpCode varchar(20) PRIMARY KEY,
	DeptID varchar(20),
	Name nvarchar(50),
	BirthDate date,
	foreign key(DeptID) references Departments(DeptID)
);
create table Dependants
(
	Number int,
	EmpCode varchar(20),
	Name nvarchar(50),
	BirthDate Date,
	Role nvarchar(30),
	primary key(Number, EmpCode ),
	foreign key(EmpCode) references Employees(EmpCode) ON DELETE CASCADE
);



DECLARE @TONGNV INT
SET @TONGNV =(SELECT COUNT(NV.MANV) FROM NHANVIEN NV JOIN PHONGBAN PB ON PB.MAPHG = NV.MAPHG AND PB.TENPHG = N'PHÒNG PHẦN MỀM TRONG NƯỚC')
PRINT N'TỔNG SỐ LƯỢNG NHÂN VIÊN LÀ ' + CONVERT(CHAR(5), @TONGNV)

DECLARE @TONGDUAN INT
SET @TONGDUAN = (SELECT COUNT(DA.MADA) FROM DUAN DA JOIN DIADIEM DD ON DD.MADD = DA.MADD WHERE DD.TENDD = N'TP Hà Nội')
PRINT N'TỔNG SỐ LƯỢNG DỰ ÁN TẠI HÀ NỘI LÀ ' + CONVERT(CHAR(5), @TONGDUAN)

DECLARE @MANV decimal(18, 0)
DECLARE @TONGSOGIO int
SELECT @MANV = NV.MANV, @TONGSOGIO = SUM(PC.SOGIO)
FROM NHANVIEN NV
JOIN PHANCONG PC ON PC.MANV = NV.MANV and NV.TENNV = N'Nguyễn Thùy Quỳnh Anh'
GROUP BY NV.MANV, NV.TENNV
PRINT CONVERT(CHAR(11), @MANV) + N' CÓ TỔNG SỐ GIỜ THAM GIA DỰ ÁN LÀ ' + CONVERT(CHAR(5), @TONGSOGIO)

DECLARE @KTTUOI INT
SET @KTTUOI = (SELECT YEAR(GETDATE()) - YEAR(NGAYSINH)
				FROM NHANVIEN NV
				WHERE NV.TENNV = N'Mai Duy An')

if( @kttuoi > 18)
	print 'du tuoi lao dong ' + convert(char(5), @kttuoi)
else
	print 'chua du tuoi lao dong ' + convert(char(5), @kttuoi)

declare @ktdiachi nvarchar(200)
select @ktdiachi = 
				case diachi when N'TP HỒ CHÍ MINH' THEN '1000000'
create proc prc_vd1
@tenpb nvarchar(200)
as
begin
	select nv.*
	from nhanvien nv
	join phongban pb on nv.maphg = pb.maphg
end

exec prc_vd1 @tenpb = N'Phòng phần mềm trong nước'


create proc prc_vd2
@tenngs nvarchar(200)
as
begin
	select nv.*
	from nhanvien nv
	where nv.MANGS = (select nv.MANV from nhanvien nv where @tenngs = nv.TENNV)
end

exec prc_vd2 @tenngs = N'Mai Duy An'

create proc prc_vd3 
@tenpb nvarchar(200), @tongnv int output
as
begin
	select @tongnv = count(nv.manv)
	from nhanvien nv
	join phongban pb on nv.maphg = pb.maphg
	where pb.TENPHG = @tenpb 
end

declare @kq int
exec prc_vd3 @tenpb = N'Phòng phần mềm trong nước', @tongnv = @kq output
print N' Tổng số lượng nv là ' + convert(char(5), @kq)

create proc prc_vd6
@tennv nvarchar(200), @tongda int output, @tonggio int output
as
begin
	select @tongda = count(pc.MADA), @tonggio = sum(pc.SOGIO)
	from nhanvien nv
	join phancong pc on pc.MANV = nv.MANV
	where nv.TENNV = @tennv
	group by pc.manv
end

drop proc prc_vd6
declare @tda int
declare @tg int
exec prc_vd6 @tennv = N'Nguyễn Thúy Quỳnh Anh', @tongda = @tda output, @tonggio = @tg output
print N'Tổng dự án là ' + convert(char(5), @tda) + N'Tổng giờ là ' + convert(char(5), @tg)

		




declare @tong int
exec @tong = prc_vd7 @tenpb = N'Phòng phần mềm trong nước'
Print @tong
