create database baigiang
use baigiang

--Khóa bao giờ cũng có not null
--Unique có thể rỗng
--Insert into nếu ko có giá trị thì phải để là ' '

Create Table HANG(
Mah char(5) not null,
Tenh varchar(30),
Slton int,
primary key (Mah),
);


--Tạo bảng KHACH với tên và địa chỉ là duy nhất
--Mặc định điện thoại là '0'.
Create Table KHACH(
Mak char(10) not null primary key,
Tenk varchar(30),
Diachi varchar(50),
Dienthoai varchar(12) default '0',
constraint UN_Ten_DC unique (Tenk,Diachi));


create table HOADON(
Sohd char(5) not null primary key,
Ngayhd date,
Mak char(10),
--Tạo khóa ngoại là Mak ( khóa chính trong bảng KHACH)
foreign key (Mak) references KHACH(Mak));

create table ChitietHD(
Sohd char(5) not null,
Mah char(5) not null,
slban int,
Primary Key (Sohd, Mah),
foreign Key (Sohd) References HOADON(Sohd),
check (slban>=0));

--Xóa bảng KHACH
Drop table KHACH;

--Thêm một ràng buộc CHECK
alter table HANG
	Add constraint check_SL check (Slton>0)

--Thêm cột Giới tính vào bảng KHACH
alter table KHACH
	add GT char(3);

--Thay đổi độ rộng của cột địa chỉ trong bảng KHACH
alter table KHACH
	alter column Diachi char(40);

--Xóa bỏ cột GT trong bảng KHACH
alter table KHACH
	Drop column GT;

--Thêm một khách hàng mới
Insert into KHACH values ('K2000',N'Đinh Gia Linh',N'Hà Nội','048570581');

--Thêm nhiều khách hàng mới
Insert into KHACH values ('K2000',N'Đinh Gia Linh',N'Hà Nội','048570581'),
('K2001',N'Đinh Gia Linh',N'Hà Nội','048570581');

--Tạo bảng mới có tên là KHHANOI gồm các khách hàng ở Hà Nội.
Select mak,tenk,diachi,dienthoai
Into KHHANOI
from KHACH
where Diachi like N'Hà Nội';

--Sửa số lượng hàng tồn kho của tất cả các mặt hàng còn lại một nửa.
Update HANG
set Slton = Slton/2;

--Xóa các khách hàng tại Hải Phòng.
Delete from KHACH
Where Diachi like 'Hải Phòng';

Select Tenk from KHACH;
Select Distinct Tenk from KHACH;
Select * from KHACH;

--Đưa ra 3 MAHANG đầu tiên trong danh sách.
select top 3 Mah 
from HANG;

--Hiển thị các mặt hàng có số lượng tồn lớn hơn 100.
Select * from HANG 
where Slton>100;

--Hiển thị các khách hàng ở địa chỉ bắt đầu bằng chữ H
Select * from KHACH
Where diachi like 'H%'; 'H_a%'

--Thông tin về khách hàng của hóa đơn trong tháng 5/2010
Select KHACH.Mak,KHACH.Tenk
from KHACH,HOADON
where (month(NgayHD)=5) and (year(NgayHD)=2010 and (HOADON.Mak = KHACH.Mak);

--Đưa ra 3 mặt hàng đầu tiên có số lượng tồn cao nhất
Select TOP 3 Mah, Tenh, Slton
from HANG
order by Slton desc;

--Cho biết các khách hàng được sắp xếp theo địa chỉ, nếu cùng địa chỉ thì giảm theo tên
Select *
From KHACH
Order By DIACHI Asc, TENK Desc;

--Đưa ra số lượng khách của mỗi địa chỉ
Select diachi as Tinh, count(*) as SL_Khach
From KHACH
Group by diachi;

--Cho biết các khách hàng có nhiều hơn 2 lần mua hàng
Select MAK, count(MAK) AS so_lan_mua
From HOADON
Group By MAK
Having count(MAK)>2;

--Cho biết các khách hàng có nhiều hơn 10 lần mua hàng trong tháng 2 năm 2010
Select Mak, count(Mak) as So_Lan_mua_hang
From HOADON
Where (month(NgayHd)=2) and (year(NgayHd)=2010)
Group By Mak
Having count(Mak)>10;

--Tính tổng số lượng hàng của mỗi hoá đơn bán
Select SOHD, sum(SLBAN) as So_luong_hang_ban
From chitietHD
Group By SOHD;

--Đưa ra số lượng lớn nhất của một mặt hàng trong mỗi đơn hàng.
Select SOHD, Max(SLBAN) as So_luong_Max
From ChitietHD
Group By SOHD;

--Cach dung default 
Alter table Hang
	add constraint H_D default (1) for Slton;	--Cho so luong ton mac dinh la 1

--Nên ra ngoài tạo ràng buộc

Add constraint chk_nhanvien_ngaylamviec check(datediff(yy,ngaysinh,ngaylamviec) >= 19 and datediff(yy,ngaysinh,ngaylamviec) betweem 18 and 60)
--yyyy là dữ liệu trả về có thể là yy hoặc yyyy
--Trả về tuổi của nhân viên dựa trên ngày làm việc của nhân viên(Ngày làm việc - ngày sinh)
select datediff(yyyy,ngaysinh,ngaylamviec) from nhanvien;

--Lấy ngày giờ hôm nay;
select getdate() --Lấy ngày giờ hôm nay;


select datediff(yy,'2000-5-15',getdate())


select *
from Khach inner join hoadon on khach.mak=hoadon.mak
where diachi like 'Hà nội' and 
	month(ngayhd)=5 and year(ngayhd)=2021;

select *
from khach 
where diachi like 'Hà nội' and Khach.Mak in (select Hoadon.mak from Hoadon 
	where (month(ngayhd)=5 and year(ngayhd)=2021));