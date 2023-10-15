create database QLBH_Khanh;
use QLBH_Khanh
create table KHACHHANG(
	MAKHACHHANG char(10) not Null Primary Key,
	TENCONGTY nvarchar(20),
	TENGIAODICH varchar(10),
	DIACHI nvarchar(10),
	EMAIL nvarchar(20),
	DIENTHOAI varchar(10) ,
	FAX varchar(10)
);

create table NHANVIEN(
MANHANVIEN char(10) not Null Primary Key,
HO nvarchar(10),
TEN nvarchar(10),
NGAYSINH date,
NGAYLAMVIEC date,
DIACHI nvarchar(10),
DIENTHOAI varchar(10),
LUONGCOBAN INT,
PHUCAP INT);
create table NHACUNGCAP(
MACONGTY CHAR(10) NOT NULL Primary key,
TENCONGTY nvarchar(10),
TENGIAODICH varchar(10),
DIACHI nvarchar(10),
DIENTHOAI varchar(10),
FAX varchar(10),
EMAIL nvarchar(15));
alter table NHACUNGCAP
	ALTER COLUMN EMAIL char(15)

create table DONDATHANG(
	SOHOADON CHAR(10) not Null Primary Key,
	MAKHACHHANG CHAR(10) not Null,
	MANHANVIEN char(10) not null,
	foreign key(MANHANVIEN) references NHANVIEN(MANHANVIEN),
	foreign key (MAKHACHHANG) references KHACHHANG(MAKHACHHANG),
	NGAYDATHANG date,
	NGAYGIAOHANG date,
	NGAYCHUYENHANG date,
	NOIGIAOHANG nvarchar(10)
);
create table LOAIHANG(
	MALOAIHANG char(10) not NULL primary key,
	TENLOAIHANG nvarchar(10)
);

create table MATHANG(
	MAHANG nvarchar(10) not null Primary key,
	TENHANG nvarchar(15),
	MACONGTY char(10) not null,
	MALOAIHANG CHAR(10) not null,
	foreign key(MACONGTY) references NHACUNGCAP(MACONGTY),
	foreign key(MALOAIHANG) references LOAIHANG(MALOAIHANG),
	SOLUONG int,
	DONVITINH nvarchar(10),
	GIAHANG int
);

create table CHITIETDATHANG(
	SOHOADON CHAR(10) not Null,
	MAHANG nvarchar(10) not null,
	GIABAN INT,
	SOLUONG int,
	MUCGIAMGIA INT,
	foreign key(SOHOADON) references DONDATHANG(SOHOADON),
	foreign key(MAHANG) references MATHANG(MAHANG)
);

alter table NHANVIEN
	add PHUCAP int;

--1)Bổ sung ràng buộc thiết lập giá trị mặc định bằng 1 cho cột SOLUONG và bằng 0 cho cột
--MUCGIAMGIA trong bảng CHITIETDATHANG.
alter table CHITIETDATHANG
	add constraint df_MUCGIAMGIA default 0 for MUCGIAMGIA;
alter table CHITIETDATHANG
	ADD constraint df_SOLUONG default 1 for SOLUONG;
--2)Bổ sung cho bảng DONDATHANG ràng buộc kiểm tra ngày giao hàng và ngày chuyển hàng phải sau hoặc bằng với ngày đặt hàng.
alter table DONDATHANG
	add constraint ngaygiaohangday_check check (NGAYGIAOHANG > NGAYDATHANG),
    	constraint ngaychuyenhang_check check (NGAYCHUYENHANG > NGAYDATHANG);
--3)Bổ sung ràng buộc cho bảng NHANVIEN để đảm bảo rằng một nhân viên chỉ có thể làm việc trong công ty khi đủ 18 tuổi và không quá 60 tuổi
alter table NHANVIEN
	add constraint tuoi_check check (datediff(yy,NGAYSINH,NGAYLAMVIEC) between 18 and 60);
alter table DONDATHANG
	drop constraint day_check;
insert into KHACHHANG values('KH1',N'Lộc phát','GD01','Hưng Yên','0437318LP@gmail.com','0437318','123455'),
('KH2',N'Phát','GD02','Cà Mau','043214P@gmail.com','043214','098761'),
('KH3',N'Phát Tài','GD032','Đà Nẵng','097175PTgmail.com','097175','034256');
insert into NHANVIEN values('NV1',N'Nguyễn',N'Lân','2001-5-18','2019-4-7',N'Hà Nội','0437658932',2000,200),
('NV2',N'Nguyễn',N'Lam','1990-5-18','2021-4-3',N'Hà Nội','0437658932',2700,300);
insert into NHANVIEN values('NV3',N'Nguyễn',N'Cường','1989-7-7','2010-1-4',N'Hà Nội','0437658932',3000,500);
--4)Cho biết danh sách các đối tác cung cấp hàng cho công ty.
ALTER table NHACUNGCAP
	alter column EMAIL char(20)
SELECT *
FROM NHANVIEN
insert into NHACUNGCAP values ('CT4',N'Việt Tiến','VINAMILK',N'Hà Nội','097163','74725','viettien@gmail.com');
insert into DONDATHANG values('D1','KH1','NV1','2020-4-19','2020-5-29','2020-6-20','Vinh');
insert into DONDATHANG values('D2','KH2','NV3','2020-9-20','2020-10-1','2020-10-4',N'Bắc Giang')
INSERT INTO DONDATHANG VALUES('D3','KH3','NV2','2021-1-19','2021-2-28','2021-3-7',' ');
select TENCONGTY
from NHACUNGCAP
--5) Cho biết mã hàng, tên hàng và số lượng của các mặt hàng hiện có trong công ty.
--5) Cho biết mã hàng, tên hàng và số lượng của các mặt hàng hiện có trong công ty.
insert into LOAIHANG values ('M1',N'Thực phẩm'),
('M2',N'Thực phẩm'),('M3',N'Quần áo');
insert into NHACUNGCAP values ('CT1','VINAMILK','GD01',N'Ba Vì','0984','0326','VINAMILK@gmail.com'),
('CT2','VINAMILK','GD02',N'Lai Châu','0989','0325','VINAMILK@gmail.com');
insert into NHACUNGCAP values('CT3','VietFOOD','VINAMILk',N'Ba Vì','0888','0348','vietfood@gmail.com');
insert into MATHANG values ('MH1',N'Bánh','CT1','M1','5',N'Thùng','10'),
('MH2',N'Kẹo','CT2','M2','100',N'Hộp','2'),
('MH3',N'Vest','CT2','M3','10',N'Chiếc','100');
SELECT *
FROM DONDATHANG
INSERT into MATHANG values ('MH8',N'Nhãn','CT3','M1','5',N'Thùng',10000);
insert into MATHANG values('MH5',N'Tôm','CT2','M2','5',N'Tạ',120000);
--5
select MAHANG,TENHANG,SOLUONG
from MATHANG
--6) Cho biết Họ tên và địa chỉ và năm bắt đầu làm việc của các nhân viên
select HO,TEN,DIACHI,year(NGAYLAMVIEC)
FROM NHANVIEN
--7) Cho biết địa chỉ và điện thoại của nhà cung cấp có tên giao dịch là vinamilk
select DIACHI,DIENTHOAI
from NHACUNGCAP
where TENGIAODICH = 'VINAMILK'
--8) Cho biết mã và tên của các mặt hàng có giá lớn hơn 100000 và số lượng hiện có ít hơn 50.
select MAHANG,TENHANG,SOLUONG,GIAHANG
from MATHANG
where SOLUONG < 50 and GIAHANG > 100000
--9
select NHACUNGCAP.TENCONGTY,MATHANG.*
from MATHANG,NHACUNGCAP
where MATHANG.MACONGTY = NHACUNGCAP.MACONGTY
--10 Tên công ty việt tiến cung cấp những mặt hàng nào
insert into MATHANG values ('MH10','Nho','CT10','M4','5',N'Thùng','200000');
insert into LOAIHANG values('M4',N'Hoa quả'),('M5',N'Hoa quả');
insert into NHACUNGCAP values('CT10',N'Việt Tiến','VINAMILK','Vinh','0343','1717','viettien@gmail.com');
update NHACUNGCAP
set TENCONGTY = N'Việt Tiến'
where MACONGTY = 'CT10'
select distinct TENCONGTY
from NHACUNGCAP
select MH.*
from MATHANG MH,NHACUNGCAP CT
where MH.MACONGTY = CT.MACONGTY and CT.TENCONGTY = N'Việt Tiến'
--11) Loại hàng thực phẩm do những công ty nào cung cấp đó là gì?
select LOAIHANG.*,NHACUNGCAP.TENCONGTY
from LOAIHANG , MATHANG, NHACUNGCAP
WHERE LOAIHANG.MALOAIHANG = MATHANG.MALOAIHANG AND NHACUNGCAP.MACONGTY = MATHANG.MACONGTY and LOAIHANG.TENLOAIHANG = N'Thực phẩm'
--12)Những khách hàng nào (tên giao dịch) đã đặt mua mặt hàng Sữa hộp XYZ của công ty?
INSERT INTO CHITIETDATHANG VALUES('D1','MH2',500000,5,2),
('D2','MH3',250000,10,1),
('D2','MH10',250000,10,1);
INSERT INTO MATHANG values ('MH6',N'Sữa hộp XYZ','CT1','M2',200,N'Hộp',10000);
INSERT INTO CHITIETDATHANG VALUES('D3','MH6',170000,3,2);
select KH.TENGIAODICH , NCC.TENCONGTY
from KHACHHANG as KH join DONDATHANG as DDH on KH.MAKHACHHANG = DDH.MAKHACHHANG
join CHITIETDATHANG AS CT on CT.SOHOADON = DDH.SOHOADON
join MATHANG as MH on (MH.MAHANG = CT.MAHANG and	MH.TENHANG = N'Sữa hộp XYZ')
join NHACUNGCAP as NCC on NCC.MACONGTY = MH.MACONGTY

select tengiaodich
from MATHANG mh join NHACUNGCAP ncc on mh.MACONGTY=ncc.MACONGTY
where TENHANG=N'Sữa hộp XYZ'
intersect
select tengiaodich
from KHACHHANG

--13)Đơn đặt hàng số 1 do ai đặt và do nhân viên nào lập, thời gian và địa điểm giao hàng là ở đâu?
--GHi chú: số hóa đơn 1 có mã là 'D1'
select KH.MAKHACHHANG , NV.TEN AS NHANVIEN , DDH.NGAYGIAOHANG , DDH.NOIGIAOHANG,DDH.SOHOADON
from NHANVIEN NV,DONDATHANG DDH,KHACHHANG KH
where DDH.MANHANVIEN = NV.MANHANVIEN and DDH.SOHOADON = 'D1' and KH.MAKHACHHANG = DDH.MAKHACHHANG

--14)
select MANHANVIEN,LUONGCOBAN + PHUCAP as LUONGNHANVIEN
FROM NHANVIEN
--15)Trong đơn đặt hàng số 3 đặt mua những mặt hàng nào và số tiền mà khách hàng
--phải trả cho mỗi mặt hàng là bao nhiêu? Số tiền phả trả được tính theo công thức:
--SOLUONG×GIABAN – SOLUONG×GIABAN×MUCGIAMGIA/100).
select MH.TENHANG,CTDH.SOLUONG*CTDH.GIABAN - CTDH.SOLUONG*CTDH.GIABAN*CTDH.MUCGIAMGIA/100 AS N'Số tiền'
from DONDATHANG as DDH , MATHANG as MH,CHITIETDATHANG as CTDH
where DDH.SOHOADON = 'D3' and MH.MAHANG = CTDH.MAHANG
--16) cho biết khách nào chính là đối tác của công ty tức cùng tên giao dịch
select KH.*
from NHACUNGCAP as NCC join MATHANG as MH on MH.MACONGTY = NCC.MACONGTY
JOIN CHITIETDATHANG AS CT ON CT.MAHANG = MH.MAHANG
JOIN DONDATHANG AS DDH ON DDH.SOHOADON = CT.SOHOADON
JOIN KHACHHANG AS KH ON KH.MAKHACHHANG = DDH.MAKHACHHANG
WHERE KH.TENGIAODICH = NCC.TENGIAODICH

select * from KHACHHANG
where TENGIAODICH in(
select tengiaodich
from KHACHHANG
intersect 
select TENGIAODICH from NHACUNGCAP
)
--17)Trong công ty có những nhân viên nào có cùng ngày sinh?
select *
from NHANVIEN
where day(NGAYSINH) in (select day(NGAYSINH) from NHANVIEN group by day(NGAYSINH) having count(*) >= 2)
insert into NHANVIEN values('NV5',N'Lê',N'Nam','1960-5-18','1988-5-5',N'Hà Nội','0437682183','4700','450');
--18)Những đơn đặt hàng nào yêu cầu giao hàng ngay tại công ty đặt hàng và những đơn đó là  của công ty nào?
select SOHOADON,TENCONGTY,TENGIAODICH,NGAYDATHANG,NOIGIAOHANG
from DONDATHANG JOIN KHACHHANG ON KHACHHANG.DIACHI = DONDATHANG.NOIGIAOHANG
--19) Cho biết tên công ty, tên giao dịch, địa chỉ và điện thoại của các khách hàng và các nhà  cung cấp hàng cho cửa hàng.
seLECT TENCONGTY,TENGIAODICH,DIACHI,DIENTHOAI
FROM KHACHHANG
union all
seLECT TENCONGTY,TENGIAODICH,DIACHI,DIENTHOAI
FROM NHACUNGCAP
--20) NHững mặt hàng nào chưa từng dc khách đặt mua
select MATHANG.TENHANG
FROM MATHANG
WHERE MAHANG NOT IN (SELECT MAHANG FROM CHITIETDATHANG )
--21) Những nhân viên nào của công ty chưa từng lập bất kỳ một hoá đơn đặt hàng nào?
SELECT *
FROM NHANVIEN
WHERE MANHANVIEN NOT IN ( SELECT MANHANVIEN FROM DONDATHANG)
--22)TRONG BẢNG NH N VIÊN NGƯỜI NÀO CÓ LƯƠNG CƠ BẢN CAO NHẤT
select *
from NHANVIEN  
where LUONGCOBAN = (select MAX(LUONGCOBAN) from NHANVIEN)
--23) Năm 2020, những mặt hàng nào chỉ được đặt mua đúng một lần
select  MATHANG.TENHANG,COUNT(CHITIETDATHANG.MAHANG) AS SOLANMUA
from MATHANG JOIN CHITIETDATHANG ON MATHANG.MAHANG = CHITIETDATHANG.MAHANG
JOIN DONDATHANG ON DONDATHANG.SOHOADON = CHITIETDATHANG.SOHOADON
WHERE YEAR(DONDATHANG.NGAYDATHANG) = 2020
GROUP BY MATHANG.TENHANG , CHITIETDATHANG.MAHANG
HAVING COUNT(CHITIETDATHANG.MAHANG) = 1
--24) Hãy cho biết tổng số tiền của mỗi khách hàng đã bỏ ra để mua hàng của công ty.
SELECT KH.MAKHACHHANG,TENCONGTY,TENGIAODICH,SUM(CT.GIABAN*CT.SOLUONG - CT.GIABAN*CT.SOLUONG*CT.MUCGIAMGIA/100) AS TONG_SO_TIEN
FROM CHITIETDATHANG CT JOIN DONDATHANG DDH ON CT.SOHOADON = DDH.SOHOADON
JOIN KHACHHANG KH ON KH.MAKHACHHANG = DDH.MAKHACHHANG
GROUP BY KH.MAKHACHHANG,TENCONGTY,TENGIAODICH
--25) Mỗi một nhân viên của công ty đã lập bao nhiêu đơn đặt hàng (nếu nhân viên chưa từng lập hóa đơn nào thì trả về kết quả bằng 0).
SELECT NV.MANHANVIEN,HO,TEN,COUNT(SOHOADON) AS SO_LAN_LAP_DON_DATHANG
from DONDATHANG DDH right OUTER JOIN NHANVIEN NV ON NV.MANHANVIEN = DDH.MANHANVIEN
group by NV.MANHANVIEN,HO,TEN
--26)SỐ TIỀN CỬA HÀNG THU DC TRONG NĂM 2020
SELECT SUM(GIABAN*SOLUONG - GIABAN*SOLUONG*MUCGIAMGIA/100) AS TONG_SO_TIEN
FROM DONDATHANG join CHITIETDATHANG ON CHITIETDATHANG.SOHOADON = DONDATHANG.SOHOADON
WHERE YEAR(NGAYDATHANG) = 2020
--27) Cho biết tổng số tiền lãi mà công ty thu được từ mỗi mặt hàng trong năm 2020.
Select MH.TENHANG,SUM(CT.GIABAN*CT.SOLUONG - CT.GIABAN*CT.SOLUONG*CT.MUCGIAMGIA/100 - MH.GIAHANG*CT.SOLUONG) AS SO_tien_lai
from MATHANG MH JOIN CHITIETDATHANG CT ON MH.MAHANG = CT.MAHANG
group by MH.TENHANG
--28) Nhân viên nào của công ty bán được số lượng hàng nhiều nhất và số lượng hàng bán được của các nhân viên này là bao nhiêu?
--Tìm ra tổng số đơn hàng của mỗi nhân viên
select NV.MANHANVIEN,HO,TEN,SUM(CT.SOLUONG) AS Tổng_số_lượng
from DONDATHANG DDH join CHITIETDATHANG CT ON CT.SOHOADON = DDH.SOHOADON
JOIN NHANVIEN NV ON NV.MANHANVIEN = DDH.MANHANVIEN
group by NV.MANHANVIEN,HO,TEN
HAVING SUM(CT.SOLUONG) >= all(select SUM(CT.SOLUONG) AS Tổng_số_lượng
from DONDATHANG DDH join CHITIETDATHANG CT ON CT.SOHOADON = DDH.SOHOADON
JOIN NHANVIEN NV ON NV.MANHANVIEN = DDH.MANHANVIEN
group by NV.MANHANVIEN,HO,TEN)
--29) Đơn đặt hàng nào có số lượng hàng được đặt mua ít nhất?
SELECT DDH.SOHOADON,CT.SOLUONG
FROM DONDATHANG DDH,CHITIETDATHANG CT
WHERE DDH.SOHOADON = CT.SOHOADON AND CT.SOLUONG <= ALL(SELECT SOLUONG FROM CHITIETDATHANG)
SELECT *
FROM CHITIETDATHANG
SELECT *
FROM DONDATHANG
--30) Số tiền nhiều nhất mà mỗi khách hàng đã từng bỏ ra để đặt hàng trong các đơn đặt hàng là bao nhiêu?

--Thong tin can dua ra
--Bang nao ?
--dk tm

