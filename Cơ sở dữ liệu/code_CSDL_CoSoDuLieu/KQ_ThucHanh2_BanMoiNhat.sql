CREATE DATABASE TH2_Final;

USE TH2_Final;

CREATE TABLE KHACHHANG
(
	MAKHACHHANG varchar(10) NOT NULL PRIMARY KEY,
	TENCONGTY nvarchar(15),
	TENGIAODICH nvarchar(15),
	DIACHI nvarchar(35),
	EMAIL varchar(20),
	DIENTHOAI varchar(10),
	FAX varchar(10)
);

Insert into KHACHHANG values ('523','cong ty 1','gd1',N'Hà Nội','hanoi1@gmail.com','0123456789','fax1'),
('524','cong ty 2','gd2',N'Hà Nội','hanoi2@gmail.com','0123456788','fax1'),
('525','cong ty 3','gd3',N'Hà Nội','hanoi3@gmail.com','0123456787','fax2'),
('526','cong ty 4','gd4',N'Hà Nội','hanoi4@gmail.com','0123456786','fax3'),
('527','cong ty 5','gd5',N'Quảng Yên','quangyen1@gmail.com','0123456785','fax4');

select * from khachhang;

CREATE TABLE NHANVIEN
(
	MANHANVIEN varchar(10) NOT NULL PRIMARY KEY,
	HO nvarchar(10),
	TEN nvarchar(10),
	NGAYSINH date,
	NGAYLAMVIEC date,
	DIACHI nvarchar(35),
	DIENTHOAI varchar(10),
	LUONGCOBAN int,
	PHUCAP int
);

Insert into NHANVIEN values ('123',N'Nguyễn',N'Hoàng','2002-1-1','2022-1-4',N'Hà Nội','0123456789','10','10')
Insert into NHANVIEN values ('1234',N'Nguyễn',N'Vũ','2002-10-20','2021-12-4',N'Hà Nội','0123456789','10','10'),
('125',N'Lưu',N'Hoàng','2002-3-2','2022-2-3',N'Hà Nội','0123456799','10','10'),
('126',N'Phạm',N'Hoàng','2001-2-5','2022-3-2',N'Hà Nội','0123455899','9','10'),
('127',N'Minh',N'Hoàng','2002-1-3','2022-3-4',N'Hà Nội','0123454899','2','10'),
('128',N'Nguyễn',N'Long','2002-6-5','2022-1-3',N'Hà Nội','0123427899','10','3'),
('129',N'Nguyễn',N'Lâm','2002-1-1','2022-3-6',N'Hà Nội','0123453789','10','10'),
('130',N'Trương',N'Đức','2002-2-3','2022-2-8',N'Hà Nội','0123456789','10','10'),
('131',N'Dương',N'Hoàng','2002-2-3','2022-5-3',N'Hà Nội','0123458789','10','10');

select * from nhanvien;

CREATE TABLE NHACUNGCAP
(
	MACONGTY varchar(10) NOT NULL PRIMARY KEY,
	TENCONGTY nvarchar(20),
	TENGIAODICH nvarchar(20),
	DIACHI nvarchar(35),
	DIENTHOAI varchar(10),
	FAX varchar(10),
	EMAIL varchar(20)
);

insert into NHACUNGCAP values ('CT1','cong ty 1','gd1',N'Nguyễn Trãi','1234567890','fax_1','ntrai1@gmail.com'),
('CT2','cong ty 2','gd2',N'Nguyễn Trãi','1234567892','fax_2','ntrai2@gmail.com'),
('CT3','cong ty 3','gd3',N'Nguyễn Trãi','1234567893','fax_3','ntrai3@gmail.com'),
('CT4','cong ty 4','gd4',N'Nguyễn Trãi','1234567894','fax_4','ntrai4@gmail.com'),
('CT5',N'VIỆT TÍN','gd4',N'Nguyễn Trãi','1234567895','fax_5','ntrai5@gmail.com'),
('CT6','cong ty 6',N'VINAMILK',N'Nguyễn Trãi','1234567896','fax_6','ntrai6@gmail.com');

select * from NHACUNGCAP;


CREATE TABLE LOAIHANG
(
	MALOAIHANG varchar(10) NOT NULL PRIMARY KEY,
	TENLOAIHANG nvarchar(20)
);


insert into LOAIHANG values  (1,N'Đồ gia dụng'),
(2,N'Thực phẩm'),
(3,N'Đồ diện tử');
insert into LOAIHANG values (4,N'Đồ dùng cá nhân');
select * from LOAIHANG;



CREATE TABLE MATHANG
(
	MAHANG varchar(10) NOT NULL PRIMARY KEY,
	TENHANG nvarchar(20),
	MACONGTY varchar(10),
	MALOAIHANG varchar(10),
	SOLUONG int,
	DONVITINH nvarchar(10),
	GIAHANG int,
	FOREIGN KEY (MALOAIHANG) REFERENCES LOAIHANG(MALOAIHANG),
	FOREIGN KEY (MACONGTY) REFERENCES NHACUNGCAP(MACONGTY)
);

insert into MATHANG values('201',N'Thịt lơn','CT1','2','1',N'kg','20000'),
('202',N'Thịt Bò','CT2','2','1',N'kg','30000'),
('203',N'Thịt Gà','CT2','2','1',N'kg','15000'),
('204',N'Thịt Gà','CT1','2','1',N'kg','30000'),
('205',N'Sữa chua','CT1','2','1',N'hộp','5000'),
('206',N'Kính mắt','CT5','4','1',N'cái','100000'),
('207',N'Kính RÂM','CT5','4','1',N'cái','500000'),
('208',N'Ghế công thái học','CT3','1','1','chiếc','5000000'),
('209',N'Nồi','CT4','1','1',N'cái','100000'),
('210',N'Xoong','CT4','1','1',N'cái','200000'),
('211',N'IPHONE 14 PRO MAX','CT3','2','1',N'cái','33000000');
insert into MATHANG values('212',N'Sữa hộp XYZ','CT1','2','1',N'hộp','10000');
insert into MATHANG values('214',N'Sữa hộp XYZ','CT6','2','1',N'hộp','10000');

select * from MATHANG

CREATE TABLE DONDATHANG
(
	SOHOADON int NOT NULL PRIMARY KEY,
	MAKHACHHANG varchar(10),
	MANHANVIEN varchar(10) not null,
	NGAYDATHANG date,
	NGAYGIAOHANG date,
	NGAYCHUYENHANG date,
	NOIGIAOHANG nvarchar(15),
	FOREIGN KEY (MAKHACHHANG) REFERENCES KHACHHANG(MAKHACHHANG),
	FOREIGN KEY (MANHANVIEN) REFERENCES NHANVIEN(MANHANVIEN)
);


insert into DONDATHANG values ('1','523','123','2022-6-8','2022-6-12','2022-6-11',N'Hà Nội'),
('2','523','1234','2022-6-8','2022-6-12','2022-6-15',N'Hà Nội'),
('3','524','123','2022-7-8','2022-7-12','2022-7-11',N'Hà Nội'),
('4','526','1234','2022-8-8','2022-8-12','2022-8-16',N'Hà Nội'),
('5','527','125','2022-8-8','2022-8-12','2022-8-16',N'Hà Nội'),
('6','526','1234','2022-9-8','2022-9-12','2022-9-12',N'Hà Nội'),
('7','523','126','2022-9-8','2022-9-12','2022-9-15',N'Hà Nội'),
('8','525','127','2022-10-8','2022-10-12','2022-10-16',N'Hà Nội'),
('9','525','128','2022-8-8','2022-8-12','2022-8-14',N'Hà Nội'),
('10','524','125','2022-8-8','2022-8-12','2022-8-14',N'Nguyễn Trãi');

select * from DONDATHANG

CREATE TABLE CHITIETDATHANG
(
	SOHOADON int,
	MAHANG varchar(10),
	GIABAN int,
	SOLUONG int,
	MUCGIAMGIA int,
	PRIMARY KEY (SOHOADON, MAHANG),
	FOREIGN KEY (SOHOADON) REFERENCES DONDATHANG(SOHOADON),
	FOREIGN KEY (MAHANG) REFERENCES MATHANG(MAHANG)
);


insert into CHITIETDATHANG values ('1','201','30000','3','10'),
('2','202','30000','2','0'),
('3','203','30000','1','0'),
('4','204','30000','2','10'),
('5','205','30000','3','0'),
('6','206','30000','5','10'),
('7','207','30000','1','40'),
('8','208','30000','2','60'),
('9','210','30000000','1','0');


select * from CHITIETDATHANG;

--câu 1
alter table CHITIETDATHANG
	add constraint Solg_default default 1 for soluong;
alter table CHITIETDATHANG
	add constraint MaGG_default default 0 for mucgiamgia;

--câu 2
alter table DONDATHANG
	add constraint chk_day check (NGAYCHUYENHANG>=NGAYDATHANG AND NGAYGIAOHANG>=NGAYDATHANG);

--câu 3
--Add constraint 
ALTER TABLE NHANVIEN 
ADD CONSTRAINT CH_NHANVIEN_NGAYLAMVIEC CHECK(DATEDIFF(YY,NGAYSINH,NGAYLAMVIEC) BETWEEN 18 AND 60);

select * from NHANVIEN;

--câu 4
select *
from NHACUNGCAP;
select DISTINCT TENCONGTY
from NHACUNGCAP;



--câu 5
select MAHANG,TENHANG,SOLUONG
from MATHANG;

--câu 6
select HO,DIACHI,YEAR(NGAYLAMVIEC)
from NHANVIEN

--câu 7
select DIACHI,DIENTHOAI
from NHACUNGCAP
where (TENGIAODICH='VINAMILK');

--câu 8
select MAHANG,TENHANG
from MATHANG
where (GIAHANG>100000 AND SOLUONG <50);

--câu 9
select TENHANG,TENCONGTY
from MATHANG,NHACUNGCAP
where (MATHANG.MACONGTY=NHACUNGCAP.MACONGTY);

--câu 10
select DISTINCT TENHANG,TENCONGTY
from MATHANG,NHACUNGCAP
where (MATHANG.MACONGTY=NHACUNGCAP.MACONGTY 
and NHACUNGCAP.TENCONGTY=N'VIỆT TÍN')

select DISTINCT TENHANG,TENCONGTY
from MATHANG,NHACUNGCAP
where (MATHANG.MACONGTY=NHACUNGCAP.MACONGTY 
and NHACUNGCAP.MACONGTY =N'CT5');

--câu 11 Loại hàng thực phẩm do những công ty nào cung cấp đó là gì? 
select distinct TENLOAIHANG,TENCONGTY
FROM LOAIHANG
inner join MATHANG on (MATHANG.MALOAIHANG = LOAIHANG.MALOAIHANG)
inner join NHACUNGCAP on (NHACUNGCAP.MACONGTY=MATHANG.MACONGTY)
where(LOAIHANG.TENLOAIHANG=N'Thực phẩm');

select distinct TENLOAIHANG,TENCONGTY
FROM LOAIHANG
inner join MATHANG on (MATHANG.MALOAIHANG = LOAIHANG.MALOAIHANG)
inner join NHACUNGCAP on (NHACUNGCAP.MACONGTY=MATHANG.MACONGTY)
where(LOAIHANG.MALOAIHANG='2');

select distinct mathang.MALOAIHANG, TENLOAIHANG, TENCONGTY
from NHACUNGCAP,LOAIHANG,MATHANG
where LOAIHANG.MALOAIHANG=mathang.MALOAIHANG and 
mathang.MACONGTY=NHACUNGCAP.MACONGTY and
LOAIHANG.MALOAIHANG='2';

--câu 12
select TENHANG,TENGIAODICH,TENCONGTY
from NHACUNGCAP,MATHANG
where (NHACUNGCAP.MACONGTY=MATHANG.MACONGTY and (MATHANG.MAHANG='212' or MATHANG.MAHANG='214'));

select TENHANG,TENGIAODICH,TENCONGTY
from NHACUNGCAP,MATHANG
where (NHACUNGCAP.MACONGTY=MATHANG.MACONGTY and MATHANG.TENHANG=N'Sữa hộp XYZ')

--câu 13
select SOHOADON,DONDATHANG.MAKHACHHANG,TENGIAODICH,NHANVIEN.MANHANVIEN,TEN as N'Tên nhân viên lập đơn',NGAYGIAOHANG,NGAYCHUYENHANG,NOIGIAOHANG
from DONDATHANG,NHANVIEN,KHACHHANG
where(DONDATHANG.MANHANVIEN=NHANVIEN.MANHANVIEN and DONDATHANG.MAKHACHHANG=KHACHHANG.MAKHACHHANG and DONDATHANG.SOHOADON='1');

select KHACHHANG.tengiaodich,NHANVIEN.ten as Ten_NV,DONDATHANG.sohoadon,DONDATHANG.ngaygiaohang,DONDATHANG.noigiaohang
from NHANVIEN inner join DONDATHANG on nhanvien.manhanvien=DONDATHANG.manhanvien
inner join KHACHHANG  on DONDATHANG.makhachhang=KHACHHANG.makhachhang
where sohoadon='001'

--câu 14
select ho,ten, (LUONGCOBAN+PHUCAP) as luong
from NHANVIEN

-- câu 15
select CHITIETDATHANG.SOHOADON,MATHANG.TENHANG,(CHITIETDATHANG.SOLUONG*GIABAN-((CHITIETDATHANG.SOLUONG*GIABAN*MUCGIAMGIA)/100)) as 'Phải trả'
from DONDATHANG,CHITIETDATHANG,MATHANG
where(DONDATHANG.SOHOADON=CHITIETDATHANG.SOHOADON and
CHITIETDATHANG.MAHANG=MATHANG.MAHANG and
DONDATHANG.SOHOADON='3')

select CHITIETDATHANG.SOHOADON,MATHANG.TENHANG,(CHITIETDATHANG.SOLUONG*GIABAN-((CHITIETDATHANG.SOLUONG*GIABAN*MUCGIAMGIA)/100)) as 'Phải trả'
from DONDATHANG 
inner join CHITIETDATHANG on DONDATHANG.SOHOADON=CHITIETDATHANG.SOHOADON
inner join MATHANG on CHITIETDATHANG.MAHANG=MATHANG.MAHANG 
where(DONDATHANG.SOHOADON='3');

-- câu 16 Hãy cho biết có những khách hàng nào lại chính là 
--đối tác cung cấp hàng của công ty (tức là có cùng tên giao dịch). 
select MAKHACHHANG
from KHACHHANG,NHACUNGCAP
where(KHACHHANG.TENCONGTY=NHACUNGCAP.TENCONGTY);

select MAKHACHHANG
from KHACHHANG inner join NHACUNGCAP on KHACHHANG.TENCONGTY=NHACUNGCAP.TENCONGTY

select * from KHACHHANG
where TENGIAODICH in(
select tengiaodich
from KHACHHANG
intersect 
select TENGIAODICH from NHACUNGCAP
)

--câu 17 Trong công ty có những nhân viên nào có cùng ngày sinh? 
select distinct B.Ho,B.TEN,B.NGAYSINH
from NHANVIEN A,NHANVIEN B
where (day(A.NGAYSINH)=day(B.NGAYSINH) and A.MANHANVIEN <> B.MANHANVIEN);

--câu 18 Những đơn đặt hàng nào yêu cầu giao hàng ngay tại công ty 
--đặt hàng và những đơn đó là  của công ty nào? 
select distinct SOHOADON,NOIGIAOHANG,DIACHI
from DONDATHANG inner join NHACUNGCAP on DONDATHANG.NOIGIAOHANG=NHACUNGCAP.DIACHI

--câu 19 Cho biết tên công ty, tên giao dịch, địa chỉ và điện thoại của các khách hàng 
--và các nhà  cung cấp hàng cho cửa hàng. 
select TENCONGTY,TENGIAODICH,DIACHI,DIENTHOAI from KHACHHANG
union all
select TENCONGTY,TENGIAODICH,DIACHI,DIENTHOAI from NHACUNGCAP

select TENCONGTY,TENGIAODICH,DIACHI,DIENTHOAI from KHACHHANG
union all
select TENCONGTY,TENGIAODICH,DIACHI,DIENTHOAI from NHACUNGCAP

--ket noi 5 bang 
--hoac union all trung nhau van lay ra
--union lay ra tat ca bo cai trung
select kh.TENCONGTY,kh.TENGIAODICH
from NHACUNGCAP ncc inner join MATHANG mh on ncc.MACONGTY=mh.MACONGTY 
inner join CHITIETDATHANG ctdh on mh.MAHANG = ctdh.MAHANG
inner join DONDATHANG ddh on ddh.SOHOADON=ctdh.SOHOADON
inner join KHACHHANG kh on kh.MAKHACHHANG = ddh.MAKHACHHANG


--câu 20 Những mặt hàng nào chưa từng được khách hàng đặt mua? 
select *
from MATHANG
where MATHANG.MAHANG  not in (select MAHANG from CHITIETDATHANG)

--câu 21 Những nhân viên nào của công ty chưa từng lập bất kỳ một hoá đơn đặt hàng nào? 
select *
from NHANVIEN 
where(MANHANVIEN not in (select MANHANVIEN from DONDATHANG));

--câu 22 
select ho,ten,LUONGCOBAN
from NHANVIEN
where (LUONGCOBAN=(select max(luongcoban) from nhanvien));

--câu 23 Năm 2020, những mặt hàng nào 
--chỉ được đặt mua đúng một lần. 
select MATHANG.TENHANG,count(CHITIETDATHANG.MAHANG) as 'Số lượt mua'
from MATHANG inner join CHITIETDATHANG on MATHANG.MACONGTY=CHITIETDATHANG.MAHANG 
inner join DONDATHANG on CHITIETDATHANG.SOHOADON=DONDATHANG.SOHOADON
where (year(DONDATHANG.NGAYDATHANG)='2022')
group by MATHANG.TENHANG,CHITIETDATHANG.MAHANG 
having count(CHITIETDATHANG.MAHANG)=1;


--24) Hãy cho biết tổng số tiền của mỗi khách hàng đã bỏ ra để mua hàng của công ty.
SELECT KH.MAKHACHHANG,TENCONGTY,TENGIAODICH,SUM(CT.GIABAN*CT.SOLUONG - CT.GIABAN*CT.SOLUONG*CT.MUCGIAMGIA/100) AS TONG_SO_TIEN
FROM CHITIETDATHANG CT JOIN DONDATHANG DDH ON CT.SOHOADON = DDH.SOHOADON 
JOIN KHACHHANG KH ON KH.MAKHACHHANG = DDH.MAKHACHHANG
GROUP BY KH.MAKHACHHANG,TENCONGTY,TENGIAODICH

--25) Mỗi một nhân viên của công ty đã lập bao nhiêu đơn đặt hàng (nếu nhân viên chưa từng lập hóa đơn nào thì trả về kết quả bằng 0).
SELECT NV.MANHANVIEN,HO,TEN,COUNT(SOHOADON) AS SO_LAN_LAP_DON_DATHANG 
from DONDATHANG DDH right OUTER JOIN NHANVIEN NV ON NV.MANHANVIEN = DDH.MANHANVIEN
group by NV.MANHANVIEN,HO,TEN
-- ket noi trai

select * from NHANVIEN
select * from DONDATHANG

select *
from NHANVIEN nv left outer join DONDATHANG dh on nv.MANHANVIEN = dh.MANHANVIEN

select nv.MANHANVIEN, nv.HO + ' ' + ten as hoten, COUNT(sohoadon) as so_hoa_don_da_lap 
from NHANVIEN nv left outer join DONDATHANG dh on nv.MANHANVIEN = dh.MANHANVIEN
group by nv.MANHANVIEN,nv.HO + ' ' + TEN

--26)SỐ TIỀN CỬA HÀNG THU DC TRONG NĂM 2020 
SELECT SUM(GIABAN*SOLUONG - GIABAN*SOLUONG*MUCGIAMGIA/100) AS TONG_SO_TIEN
FROM DONDATHANG join CHITIETDATHANG ON CHITIETDATHANG.SOHOADON = DONDATHANG.SOHOADON
WHERE YEAR(NGAYDATHANG) = 2022


--27) Cho biết tổng số tiền lãi mà công ty thu được từ mỗi mặt hàng trong năm 2020.
select tenhang,sum(ctdh.soluong*giaban-ctdh.soluong*giaban*mucgiamgia/100-mh.soluong*giaban)
from dondathang ddh join chitietdathang ctdh on ddh.sohoadon=ctdh.sohoadon
join mathang mh on ctdh.mahang=mh.mahang
group by tenhang,ngaydathang
having year(ngaydathang)=2022

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
select top 1 sohoadon
from CHITIETDATHANG 
group by sohoadon ,SOLUONG
order by SOLUONG

select  *
from DONDATHANG

select  *
from CHITIETDATHANG

select SOHOADON,SOLUONG
from CHITIETDATHANG
where SOLUONG = (select top 1 SOLUONG
from CHITIETDATHANG 
group by SOLUONG
order by SOLUONG)


--30) Số tiền nhiều nhất mà mỗi khách hàng đã từng bỏ ra để đặt hàng trong các đơn đặt hàng là  bao nhiêu?
select top 1 sum(soluong*giaban-soluong*giaban*mucgiamgia/100) as tien_nhieu_nhat
from DONDATHANG inner join CHITIETDATHANG on DONDATHANG.SOHOADON = CHITIETDATHANG.SOHOADON
group by CHITIETDATHANG.SOHOADON
order by 1 desc -- sap xep theo cot 1