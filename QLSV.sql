﻿---database
CREATE DATABASE QLSV
USE QLSV
Drop database QLSV
---table
CREATE TABLE SINHVIEN
(
	MaSV int identity(1,1) not null,
	TenSV Nvarchar(30) not null,
	GioiTinh Nvarchar(4) default N'Nam' check (GioiTinh=N'Nam' or GioiTinh=N'NỮ'),
	NgaySinh Date check (NgaySinh<GETDATE()),
	Que Nvarchar(15) not null,
	Lop Nvarchar(5)
)
CREATE TABLE MONHOC
(
	MaMH int identity(1,1) not null,
	TenMH Nvarchar(20) unique,
	DVHT int check(DVHT<=9 and DVHT>=2)
)
CREATE TABLE KETQUA
(
	MaSV int not null,
	MaMH int not null,
	Diem float check (Diem<=10 and Diem>=0)
)
DROP TABLE SINHVIEN
DROP TABLE MONHOC
DROP TABLE KETQUA

--- ràng buộc khóa chính
ALTER TABLE SINHVIEN
	ADD CONSTRAINT PK_SINHVIEN
	PRIMARY KEY (MaSV)
ALTER TABLE MONHOC
	ADD CONSTRAINT PK_MONHOC
	PRIMARY KEY (MaMH)
ALTER TABLE KETQUA
	ADD CONSTRAINT PK_KETQUA
	PRIMARY KEY (MaSV, MaMH) 
--- ràng buộc khóa ngoại
ALTER TABLE KETQUA
	ADD CONSTRAINT FK_KETQUA_ref_SINHVIEN
	FOREIGN KEY (MaSV)
	REFERENCES SINHVIEN(MaSV)
ALTER TABLE KETQUA
	ADD CONSTRAINT FK_KETQUA_ref_MONHOC
	FOREIGN KEY (MaMH)
	REFERENCES MONHOC(MaMH)
--- xóa ràng buộc
ALTER TABLE KETQUA
	DROP CONSTRAINT FK_KETQUA_ref_SINHVIEN, FK_KETQUA_ref_MONHOC
ALTER TABLE KETQUA
	DROP CONSTRAINT PK_KETQUA
---nhập dữ liệu
INSERT INTO SINHVIEN VALUES
	(N'Trần Bảo Trọng',N'Nam','1995-12-14',N'Hà Giang','L02'),
	(N'Lê Thuỳ Dương',N'Nữ','1997-05-12',N'Hà Nội','L03'),
	(N'Trân Phương Thảo',N'Nam','1996-03-30',N'Quản Ninh','L01'),
	(N'Lê Trường An',N'Nam','1995-11-20',N'Ninh Bình','L04'),
	(N'Phạm Thị Hương Giang',N'Nữ','1990-02-20',N'Hòa Bình','L02'),
	(N'Tần Anh Bảo',N'Nam','1995-12-14',N'Hà Giang','L02'),
	(N'Lê Thùy Dung',N'Nữ','1997-05-12',N'Hà Nội','L03'),
	(N'Phạm Trung Tính',N'Nam','1996-03-30',N'Quảng Ninh','L01'),
	(N'Lê Hải An',N'Nam','1995-11-20',N'Ninh Bình','L04'),
	(N'Phạm Thị Giang Hương',N'Nữ','1999-02-21',N'Hòa Bình','L02'),
	(N'Đoàn Duy Thức',N'Nam','1994-04-12',N'Hà Nội','L01'),
	(N'Dương Tuấn Thông',N'Nam','1991-04-12',N'Nam Định','L03'),
	(N'Lê Thành Đạt',N'Nam','1993-04-15',N'Phú Thọ','L04'),
	(N'Nguyễn Hằng Nga',N'Nữ','1993-05-25',N'Hà Nội','L01'),
	(N'Trần Thanh Nga',N'Nữ','1994-06-20',N'Phú Thọ','L03'),
	(N'Trần Trọng Hoàng',N'Nam','1995-12-14',N'Hà Giang','L02'),
	(N'Nguyễn Mai Hoa',N'Nữ','1997-05-12',N'Hà Nội','L03'),
	(N'Lê Thúy An',N'Nam','1998-03-23',N'Hà Nội','L01')

INSERT INTO MONHOC VALUES
	(N'Toán cao cấp',3),
	(N'Mạng máy tính',3),
	(N'Tin đại cương',4)

INSERT INTO KETQUA VALUES
	(1,1,8),
	(1,2,5),
	(1,3,7),
	(2,1,9),
	(2,2,5),
	(2,3,2),
	(3,1,4),
	(3,2,2),
	(4,1,1),
	(4,2,3),
	(5,1,4),
	(6,1,2),
	(6,2,7),
	(6,3,9),
	(7,1,4),
	(7,2,5),
	(7,3,8),
	(8,1,9),
	(8,2,8),
	(9,1,7),
	(9,2,7),
	(9,3,5),
	(10,1,3),
	(10,3,6),
	(11,1,6),
	(12,1,8),
	(12,2,7),
	(12,3,5),
	(13,1,6),
	(13,2,5),
	(13,3,5),
	(14,1,8),
	(14,2,9),
	(14,3,7),
	(15,1,3),
	(15,2,6),
	(15,3,4),
	(16,1,NULL)

--- truy xuất dữ liệu
SELECT * FROM SINHVIEN
SELECT * FROM MONHOC
SELECT * FROM KETQUA


---- câu lệnh truy vấn

--- cho biết mã môn học, tên môn học, điểm thi của sinh viên có tên Thức
go
select  KETQUA.MaMH, MONHOC.TenMH, KETQUA.Diem
from KETQUA, MONHOC
WHERE (SELECT MaSV FROM SINHVIEN WHERE TenSV LIKE N'%Thức') = KETQUA.MaSV AND KETQUA.MaMH = MONHOC.MaMH


--- cho biết mã môn học, tên môn học và điểm ở những môn mà sinh viên tên Dung phải thi lại (diem <5)
select  KETQUA.MaMH, MONHOC.TenMH, KETQUA.Diem
from KETQUA, MONHOC
WHERE (SELECT MaSV FROM SINHVIEN WHERE TenSV LIKE N'%Dung') = KETQUA.MaSV AND KETQUA.MaMH = MONHOC.MaMH and KETQUA.Diem<5


--- Cho biết mã sinh viên, tên những sinh viên đã thi ít nhất là 1 trong 3 môn Lý thuyết Cơ sở dữ liệu, Tin học đại cương, mạng máy tính.
select SINHVIEN.MaSV, SINHVIEN.TenSV, count (KETQUA.MaMH)
from SINHVIEN inner join KETQUA
on SINHVIEN.MaSV = KETQUA.MaSV
group by SINHVIEN.MaSV, SINHVIEN.TenSV
having count (KETQUA.MaMH)>=1


---cho biết mã môn học, tên môn học mà sinh viên 10 chưa có điểm
select MaMH, TenMH
from MONHOC
where MaMH not in (select MaMH from KETQUA where MaSV =10 and Diem is not NULL)


--- cho biết mã sv và tên của những sv có điểm thi môn 2 không thấp nhất khoa
select SINHVIEN.MaSV, SINHVIEN.TenSV
FROM SINHVIEN INNER JOIN KETQUA ON SINHVIEN.MaSV = KETQUA.MaSV
WHERE KETQUA.MaMH = 2 AND KETQUA.Diem != (select min(KETQUA.Diem) FROM SINHVIEN INNER JOIN KETQUA ON SINHVIEN.MaSV = KETQUA.MaSV WHERE KETQUA.MaMH = 2)


--- cho biết mã sv và tên của những sv có điểm thi môn một lớn hơn điểm thi môn một của sv mã sv 3
select SINHVIEN.MaSV, SINHVIEN.TenSV
FROM SINHVIEN INNER JOIN KETQUA ON SINHVIEN.MaSV = KETQUA.MaSV
where KETQUA.Diem > (select KETQUA.Diem FROM SINHVIEN INNER JOIN KETQUA ON SINHVIEN.MaSV = KETQUA.MaSV where KETQUA.MaSV = 3 and KETQUA.MaMH = 1) and KETQUA.MaMH = 1


---cho biết sinh viên phải thi lại môn toán
select SINHVIEN.MaSV, SINHVIEN.TenSV
from SINHVIEN INNER JOIN KETQUA ON SINHVIEN.MaSV = KETQUA.MaSV inner join MONHOC on MONHOC.MaMH = KETQUA.MaMH
where KETQUA.Diem < 4 and MONHOC.TenMH = N'Toán cao cấp'



--- tìm những môn có số học sinh có môn thi lại >=2

select MONHOC.TenMH, count(KETQUA.Diem) as N'số sinh viên thi lại'
from MONHOC INNER JOIN KETQUA ON MONHOC.MaMH = KETQUA.MaMH
where KETQUA.Diem <4
group by MONHOC.TenMH
having count(KETQUA.Diem) >= 2


--- tìm sinh viên mỗi lớp có điểm cao nhất môn tin học đại cương
--- lọc điểm cao nhất của mỗi lớp với môn tin học đại cương
go
create view max12
as
	select SINHVIEN.Lop, MAX(KETQUA.Diem) as N'max1'
	from SINHVIEN INNER JOIN KETQUA ON SINHVIEN.MaSV = KETQUA.MaSV INNER JOIN MONHOC ON MONHOC.MaMH = KETQUA.MaMH
	where MONHOC.TenMH = N'Tin đại cương'
	group by SINHVIEN.Lop 
go
drop view max12
select * from max12
--- in ra yêu cầu
select diem.TenSV, diem.Lop
from max12 inner join diem on max12.Lop=diem.Lop and max12.max1=diem.Diem
from (SINHVIEN left JOIN KETQUA ON SINHVIEN.MaSV = KETQUA.MaSV) join max12 on (max12.Lop = SINHVIEN.Lop and max12.max1 = KETQUA.Diem)
--- lọc sinh viên học môn tin học đại cương
go 
create view diem
as
	select SINHVIEN.TenSV, SINHVIEN.Lop,KETQUA.Diem
	from SINHVIEN INNER JOIN KETQUA ON SINHVIEN.MaSV = KETQUA.MaSV INNER JOIN MONHOC ON MONHOC.MaMH = KETQUA.MaMH
	where MONHOC.TenMH = N'Tin đại cương'
go


---đối với mỗi lớp, lập bảng điểm gồm mã sinh viên, tên sinh viên, điểm trung bình 
select SINHVIEN.MaSV, SINHVIEN.TenSV, AVG(KETQUA.Diem) as N'điểm trung bình'
from SINHVIEN INNER JOIN KETQUA ON SINHVIEN.MaSV = KETQUA.MaSV
group by SINHVIEN.MaSV, SINHVIEN.TenSV


--1. Viết thủ tục lưu trữ để hiển thị các sinh viên trong lớp gồm thông tin: mã sinh viên, tên sinh viên, môn mà sinh viên này chưa qua theo giá trị lớp nhập vào.
go 
create procedure search(@Lop Nvarchar(5))
as
	begin
		select SINHVIEN.MaSV, SINHVIEN.TenSV from SINHVIEN inner join KETQUA on SINHVIEN.MaSV = KETQUA.MaSV where Lop = @Lop and KETQUA.Diem < 4 
	end
go
drop procedure search
search N'L01'


--4. viết thủ tục lưu trữ để Nhập vào mã môn học và mã sinh viên, kiểm tra sinh viên này có đậu môn này hay không, nếu có thì in ra 'Đậu', không thì in ra 'Trượt'
go 
create procedure search1(@MaMH int , @MaSV int)
as 
	begin
		if ((select Diem from KETQUA where (MaSV = @MaSV) and (MaMH = @MaMH)) >=4)
			print N'Đỗ'
		else
			print N'Trượt'
	end
go


--1. Thống kê các sinh viên có điểm trung bình từ 8 trở lên theo từng lớp
 go 
create function func_list_student_is_HSG_by_lop(@Lop Nvarchar(5))
 returns @list_student table (MaSV int , TenSV Nvarchar(30), DiemTB float, Lop Nvarchar(5))
 as 
 begin
	insert into @list_student
	select SINHVIEN.MaSV, TenSV, AVG(Diem), Lop 
	from SINHVIEN	join KETQUA on SINHVIEN.MaSV = KETQUA.MaSV
	where Lop like @Lop
	group by SINHVIEN.MaSV, TenSV, Lop
	return
 end
 go
  
 select * from dbo.func_list_student_is_HSG_by_lop('L03')