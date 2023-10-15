create database TH2_OT

use TH2_OT
create table KHACHHANG(
	MAKHACHHANG varchar(10) not null primary key,
	TENCONGTY nvarchar(30),
	Tengiaodich nvarchar(30),
	DIACHI nvarchar(30),
	email varchar(20),
	dienthoai varchar(10),
	fax varchar(10)
)
go
Insert into KHACHHANG values ('523','cong ty 1','gd1',N'Hà Nội','hanoi1@gmail.com','0123456789','fax1'),
('524','cong ty 2','gd2',N'Hà Nội','hanoi2@gmail.com','0123456788','fax1'),
('525','cong ty 3','gd3',N'Hà Nội','hanoi3@gmail.com','0123456787','fax2'),
('526','cong ty 4','gd4',N'Hà Nội','hanoi4@gmail.com','0123456786','fax3'),
('527','cong ty 5','gd5',N'Quảng Yên','quangyen1@gmail.com','0123456785','fax4');

create table nhanvien(
	manhanvien varchar(10) not null primary key,
	ho nvarchar(10),
	ten nvarchar(10),
	ngaysinh date,
	ngaylamviec date,
	diachi nvarchar(30),
	dienthoai varchar(10),
	luongcoban int,
	phucap int
)

go

Insert into NHANVIEN values ('123',N'Nguyễn',N'Hoàng','2002-1-1','2022-1-4',N'Hà Nội','0123456789','10','10')
Insert into NHANVIEN values ('1234',N'Nguyễn',N'Vũ','2002-10-20','2021-12-4',N'Hà Nội','0123456789','10','10'),
('125',N'Lưu',N'Hoàng','2002-3-2','2022-2-3',N'Hà Nội','0123456799','10','10'),
('126',N'Phạm',N'Hoàng','2001-2-5','2022-3-2',N'Hà Nội','0123455899','9','10'),
('127',N'Minh',N'Hoàng','2002-1-3','2022-3-4',N'Hà Nội','0123454899','2','10'),
('128',N'Nguyễn',N'Long','2002-6-5','2022-1-3',N'Hà Nội','0123427899','10','3'),
('129',N'Nguyễn',N'Lâm','2002-1-1','2022-3-6',N'Hà Nội','0123453789','10','10'),
('130',N'Trương',N'Đức','2002-2-3','2022-2-8',N'Hà Nội','0123456789','10','10'),
('131',N'Dương',N'Hoàng','2002-2-3','2022-5-3',N'Hà Nội','0123458789','10','10');

create table nhacungcap(
	macongty varchar(10) not null primary key,
	tencongty nvarchar(30),
	tengiaodich nvarchar(30),
	diachi nvarchar(30),
	dienthoai varchar(10),
	fax varchar(10),
	email varchar(20)
)

go

insert into NHACUNGCAP values ('CT1','cong ty 1','gd1',N'Nguyễn Trãi','1234567890','fax_1','ntrai1@gmail.com'),
('CT2','cong ty 2','gd2',N'Nguyễn Trãi','1234567892','fax_2','ntrai2@gmail.com'),
('CT3','cong ty 3','gd3',N'Nguyễn Trãi','1234567893','fax_3','ntrai3@gmail.com'),
('CT4','cong ty 4','gd4',N'Nguyễn Trãi','1234567894','fax_4','ntrai4@gmail.com'),
('CT5',N'VIỆT TIẾN','gd4',N'Nguyễn Trãi','1234567895','fax_5','ntrai5@gmail.com'),
('CT6','cong ty 6',N'VINAMILK',N'Nguyễn Trãi','1234567896','fax_6','ntrai6@gmail.com');

create table loaihang(
	maloaihang varchar(10) not null primary key,
	tenloaihang nvarchar(30)
)

go

insert into LOAIHANG values  (1,N'Đồ gia dụng'),
(2,N'Thực phẩm'),
(3,N'Đồ diện tử'),
(4,N'Đồ dùng cá nhân');
select * from LOAIHANG;

create table mathang(
	mahang varchar(10) not null primary key,
	tenhang nvarchar(30),
	macongty varchar(10) not null,
	maloaihang varchar(10) not null,
	soluong int,
	donvitinh nvarchar(10),
	giahang int
	foreign key (macongty) references nhacungcap(macongty),
	foreign key (maloaihang) references loaihang(maloaihang)
)

go

insert into MATHANG values('201',N'Thịt lơn','CT1','2','1',N'kg','20000'),
('202',N'Thịt Bò','CT2','2','1',N'kg','30000'),
('203',N'Thịt Gà','CT2','2','1',N'kg','15000'),
('204',N'Thịt Gà','CT1','2','1',N'kg','30000'),
('205',N'Sữa chua','CT1','2','1',N'hộp','5000'),
('206',N'Kính mắt','CT5','4','1',N'cái','100000'),
('207',N'Kính RÂM','CT5','4','1',N'cái','500000'),
('208',N'Ghế công thái học','CT3','1','1',N'chiếc','5000000'),
('209',N'Nồi','CT4','1','1',N'cái','100000'),
('210',N'Xoong','CT4','1','1',N'cái','200000'),
('211',N'IPHONE 14 PRO MAX','CT3','2','1',N'cái','33000000');
insert into MATHANG values('212',N'Sữa hộp XYZ','CT1','2','1',N'hộp','10000');
insert into MATHANG values('214',N'Sữa hộp XYZ','CT6','2','1',N'hộp','10000');


create table dondathang (
	sohoadon int not null primary key,
	makhachhang varchar(10) not null,
	manhanvien varchar(10) not null,
	ngaydathang date,
	ngaygiaohang date,
	ngaychuyenhang date,
	noigiaohang nvarchar(30),
	foreign key (makhachhang) references khachhang(makhachhang),
	foreign key (manhanvien) references nhanvien(manhanvien)
)


go
insert into DONDATHANG values ('1','523','123','2022-6-8','2022-6-12','2022-6-11',N'Hà Nội'),
('2','523','1234','2022-6-8','2022-6-12','2022-6-15',N'Hà Nội'),
('3','524','123','2022-7-8','2022-7-12','2022-7-11',N'Hà Nội'),
('4','526','1234','2022-8-8','2022-8-12','2022-8-16',N'Hà Nội'),
('5','527','125','2022-8-8','2022-8-12','2022-8-16',N'Hà Nội'),
('6','526','1234','2022-9-8','2022-9-12','2022-9-12',N'Hà Nội'),
('7','523','126','2022-9-8','2022-9-12','2022-9-15',N'Hà Nội'),
('8','525','127','2022-10-8','2022-10-12','2022-10-16',N'Hà Nội'),
('9','525','128','2022-8-8','2022-8-12','2022-8-14',N'Hà Nội'),
('10','524','125','2022-8-8','2022-8-12','2022-8-14',N'Nguyễn Trãi'),
('11','524','1234','2022-8-8','2022-8-12','2022-8-14',N'Nguyễn Trãi');


create table chitietdathang(
	sohoadon int not null,-- primary key,
	mahang varchar(10) not null,-- primary key,
	giaban int,
	soluong int,
	mucgiamgia int,
	primary key(sohoadon,mahang),
	foreign key (mahang) references mathang(mahang),
	foreign key (sohoadon) references dondathang(sohoadon)
)
insert into CHITIETDATHANG values ('1','201','30000','3','10'),
('2','202','30000','2','0'),
('3','203','30000','1','0'),
('4','204','30000','2','10'),
('5','205','30000','3','0'),
('6','206','30000','5','10'),
('7','207','30000','1','40'),
('8','208','30000','2','60'),
('9','210','30000000','1','0')
('11','201','30000','3','10');
--Khach hang - nhan vien-loai hang - nha cung cap-- chi co khoa chinh
--mat hang - don dat hang - chi tiet dat hang


select * from KHACHHANG
select * from dondathang
select * from nhanvien
select * from nhacungcap
select * from chitietdathang
select * from mathang
select * from loaihang
--Truy van

--1) Bổ sung ràng buộc thiết lập giá trị mặc định bằng 1 cho cột SOLUONG và bằng 0 cho cột  MUCGIAMGIA trong bảng CHITIETDATHANG. 
alter table chitietdathang
	add constraint soluong_md default 1 for soluong
alter table chitietdathang
	add constraint mucgiamgia_md default 0 for mucgiamgia

--2) Bổ sung cho bảng DONDATHANG ràng buộc kiểm tra ngày giao hàng và ngày chuyển  hàng phải sau hoặc bằng với ngày đặt hàng. 
alter table dondathang
	add constraint check_giaovachuyen check (ngaygiaohang>=ngaydathang and ngaychuyenhang>=ngaydathang)

--3) Bổ sung ràng buộc cho bảng NHANVIEN để đảm bảo rằng một nhân viên chỉ có thể làm  việc trong công ty khi đủ 18 tuổi và không quá 60 tuổi 
alter table nhanvien
	add constraint check_age check(datediff(yyyy,ngaysinh,getdate()) between 18 and 60)

--4) Cho biết danh sách các đối tác cung cấp hàng cho công ty.
select * from nhacungcap


--5) Cho biết mã hàng, tên hàng và số lượng của các mặt hàng hiện có trong công ty. 
select mahang,tenhang,soluong from mathang

--6) Cho biết Họ tên và địa chỉ và năm bắt đầu làm việc của các nhân viên. 
select ho,ten, diachi,year(ngaylamviec) as 'Năm bắt đầu làm việc' from nhanvien

--7) Cho biết Địa chỉ và điện thoại của nhà cung cấp có tên giao dịch VINAMILK là gì? 
select diachi,dienthoai,tengiaodich from nhacungcap where tengiaodich='VINAMILK'

--8) Cho biết mã và tên của các mặt hàng có giá lớn hơn 100000 và số lượng hiện có ít hơn 50. 
select mahang,tenhang,giahang,soluong from mathang where giahang>100000 and soluong<50

--9) Cho biết mỗi mặt hàng trong công ty do ai cung cấp. 
select  tenhang,ncc.macongty,tencongty from mathang mh join nhacungcap ncc on mh.macongty=ncc.macongty 

--10)Công ty Việt Tiến đã cung cấp những mặt hàng nào? 
select tencongty,tenhang from nhacungcap ncc join mathang mh on ncc.macongty=mh.macongty where ncc.tencongty=N'Việt Tiến'

--11) Loại hàng thực phẩm do những công ty nào cung cấp đó là gì? 
select * from mathang

select tencongty,tenhang,tenloaihang from nhacungcap ncc join mathang mh on ncc.macongty=mh.macongty
join loaihang lh on mh.maloaihang=lh.maloaihang
where lh.tenloaihang=N'Thực phẩm'

--12)Những khách hàng nào (tên giao dịch) đã đặt mua mặt hàng Sữa hộp XYZ của công ty?	@)$(_)
select distinct tengiaodich from nhacungcap ncc join mathang mh on ncc.macongty=mh.macongty
where tenhang=N'Sữa hộp XYZ'
--union
intersect
select tengiaodich from KHACHHANG

select kh.tengiaodich
from KHACHHANG kh join nhacungcap ncc on kh.Tengiaodich =ncc.tengiaodich
join mathang mh on ncc.macongty=mh.macongty
where mh.tenhang=N'Sữa hộp XYZ'

--13)Đơn đặt hàng số 1 do ai đặt và do nhân viên nào lập, thời gian và địa điểm giao hàng là ở đâu? 
select sohoadon,ddh.manhanvien,(ho+' '+ten) as hoten,makhachhang,ngaydathang,noigiaohang
from dondathang ddh join nhanvien nv on ddh.manhanvien=nv.manhanvien
where sohoadon='1'

--14) Hãy cho biết số tiền lương mà công ty phải trả cho mỗi nhân viên là bao nhiêu (lương = lương cơ bản + phụ cấp) 
select manhanvien,(ho + ' ' +ten),(luongcoban+phucap) as 'Lương'
from nhanvien

--15)Trong đơn đặt hàng số 3 đặt mua những mặt hàng nào và số tiền mà khách hàng phải trả cho mỗi mặt hàng là bao nhiêu? 
--Số tiền phả trả được tính theo công thức:  SOLUONG×GIABAN – SOLUONG×GIABAN×MUCGIAMGIA/100). 
select sohoadon,mh.tenhang,  ctdh.SOLUONG*GIABAN - ctdh.SOLUONG*GIABAN*MUCGIAMGIA/100 as 'Số tiền phải trả'
from chitietdathang ctdh join mathang mh on mh.mahang=ctdh.mahang
where sohoadon='3'

--16) Hãy cho biết có những khách hàng nào lại chính là đối tác cung cấp hàng của công ty (tức là có cùng tên giao dịch). 
select distinct MAKHACHHANG
from KHACHHANG kh join nhacungcap ncc on kh.Tengiaodich=ncc.tengiaodich

select * from KHACHHANG
where TENGIAODICH in(
select tengiaodich
from KHACHHANG
intersect 
select TENGIAODICH from NHACUNGCAP
)

--17) Trong công ty có những nhân viên nào có cùng ngày sinh? 
select distinct A.manhanvien,(A.ho+A.ten) as hoten,a.ngaysinh
from nhanvien A,nhanvien B
where day(a.ngaysinh)=day(b.ngaysinh) and A.manhanvien<>B.manhanvien

select *
from NHANVIEN
where day(NGAYSINH) in (select day(NGAYSINH) from NHANVIEN group by day(NGAYSINH) having count(*) >= 2)

--18) Những đơn đặt hàng nào yêu cầu giao hàng ngay tại công ty đặt hàng và những đơn đó là  của công ty nào? @)!#(
select  macongty
from dondathang ddh join nhacungcap ncc on ddh.noigiaohang=ncc.diachi

--19) Cho biết tên công ty, tên giao dịch, địa chỉ và điện thoại của các khách hàng và các nhà  cung cấp hàng cho cửa hàng. 
select TENCONGTY,Tengiaodich,DIACHI,dienthoai
from KHACHHANG
union all
select TENCONGTY,Tengiaodich,DIACHI,dienthoai
from nhacungcap

--20) Những mặt hàng nào chưa từng được khách hàng đặt mua? 
select tenhang
from mathang
where mahang not in (select mahang from chitietdathang)

--21) Những nhân viên nào của công ty chưa từng lập bất kỳ một hoá đơn đặt hàng nào? 
select manhanvien,(ho+' '+ten) as hoten
from nhanvien
where manhanvien not in (select manhanvien from dondathang)
select * from nhanvien
where manhanvien not in (select manhanvien from dondathang)
--22) Những nhân viên nào của công ty có lương cơ bản cao nhất? 
select manhanvien,ho,ten,luongcoban
from nhanvien
where luongcoban=(select max(luongcoban) from nhanvien)

select (ho+' '+ten),manhanvien as hoten,luongcoban from nhanvien
where luongcoban=(select max(luongcoban) from nhanvien)

select manhanvien,ho,ten,luongcoban
from nhanvien
group by manhanvien,ho,ten,luongcoban 
having luongcoban=(select max(luongcoban) from nhanvien)

select manhanvien,ho,ten,luongcoban
from nhanvien
group by manhanvien,ho,ten,luongcoban
having luongcoban>=all(select (luongcoban) from nhanvien)

select manhanvien,ho,ten,luongcoban
from nhanvien
where luongcoban>=all(select (luongcoban) from nhanvien)

--23) Năm 2020, những mặt hàng nào chỉ được đặt mua đúng một lần. @#%$@#%
--select * from dondathang
--select * from chitietdathang

select tenhang,mahang from mathang
where mahang in (select mahang from dondathang ddh join chitietdathang ctdh
on ddh.sohoadon=ctdh.sohoadon
group by mahang,ngaydathang
having count(*)=1 and year(ngaydathang)=2022
)

--Đưa ra cái gì
--Điều kiện để đưa ra/tìm
--Điều kiện và thông tin đưa ra để làm gì

select mh.mahang,tenhang,ngaydathang,count(ctdh.mahang)
from mathang mh join chitietdathang ctdh on mh.mahang=ctdh.mahang
join dondathang ddh on ctdh.sohoadon=ddh.sohoadon
group by mh.mahang,ngaydathang,tenhang
having count(ctdh.mahang)=1 and year(ddh.ngaydathang)=2022

--24) Hãy cho biết tổng số tiền của mỗi khách hàng đã bỏ ra để mua hàng của công ty. 
--SOLUONG×GIABAN – SOLUONG×GIABAN×MUCGIAMGIA/100

--Đưa ra cái gì
--Điều kiện để đưa ra/tìm
--Điều kiện và thông tin đưa ra để làm gì

select makhachhang,sum(soluong*giaban-soluong*giaban*mucgiamgia/100) as 'Số tiền đã mua hàng'
from chitietdathang ctdh join dondathang ddh on ctdh.sohoadon=ddh.sohoadon
group by makhachhang


--25) Mỗi một nhân viên của công ty đã lập bao nhiêu đơn đặt hàng
--(nếu nhân viên chưa từng lập  hóa đơn nào thì trả về kết quả bằng 0). 
select *
from nhanvien nv left outer join dondathang ddh on nv.manhanvien=ddh.manhanvien	

select nv.manhanvien,ho+' '+ten as Hoten,count(ddh.manhanvien) as 'So don da lap'
from nhanvien nv left outer join dondathang ddh on nv.manhanvien=ddh.manhanvien	
group by nv.manhanvien,ho,ten

select nv.manhanvien, (ho+' '+ten) as hoten, count(ddh.manhanvien)
from nhanvien nv left outer join dondathang ddh
on nv.manhanvien=ddh.manhanvien
group by nv.manhanvien,ho,ten,ddh.manhanvien

--26) Cho biết tổng số tiền hàng mà cửa hàng thu được trong mỗi tháng của năm 2020. 
select month(ngaychuyenhang) as thang,sum(soluong*giaban-soluong*giaban*mucgiamgia/100) as 'tong so tien'
from chitietdathang ctdh join dondathang ddh on ctdh.sohoadon=ddh.sohoadon
group by month(ngaychuyenhang),year(ngaychuyenhang)
having year(ngaychuyenhang)=2022

select month(ngaydathang) as thang,sum(soluong*giaban-soluong*giaban*mucgiamgia/100) as 'tong so tien'
from chitietdathang ctdh join dondathang ddh on ctdh.sohoadon=ddh.sohoadon
group by month(ngaydathang),year(ngaydathang)
having year(ngaydathang)=2022

--Tong so tien ca nam
select sum(soluong*giaban-soluong*giaban*mucgiamgia/100) as 'tong so tien'
from chitietdathang ctdh join dondathang ddh on ctdh.sohoadon=ddh.sohoadon
where year(ngaydathang)=2022


--27) Cho biết tổng số tiền lãi mà công ty thu được từ mỗi mặt hàng trong năm 2020. 
select tenhang,sum(ctdh.soluong*giaban-ctdh.soluong*giaban*mucgiamgia/100-mh.soluong*giaban)
from dondathang ddh join chitietdathang ctdh on ddh.sohoadon=ctdh.sohoadon
join mathang mh on ctdh.mahang=mh.mahang
group by tenhang,ngaydathang
having year(ngaydathang)=2022
--28) Nhân viên nào của công ty bán được số lượng hàng nhiều nhất và số lượng hàng bán được  của các nhân viên này là bao nhiêu? 
select ddh.manhanvien,ho+' '+ten as 'Ho ten',count(ddh.manhanvien) as'so luong'
from nhanvien nv join dondathang ddh on nv.manhanvien=ddh.manhanvien
group by  ddh.manhanvien,ho+' '+ten
having count(ddh.manhanvien) = (
select top 1 count(manhanvien) from dondathang group by manhanvien order by count(manhanvien) desc
)

select ddh.manhanvien,ho+' '+ten as'Ho ten',count(ddh.manhanvien) as 'So luong hang'
from dondathang ddh join nhanvien nv on ddh.manhanvien=nv.manhanvien
group by ddh.manhanvien,ho,ten
having count(ddh.manhanvien) >= all(select count(ddh.manhanvien)
from dondathang ddh join nhanvien nv on ddh.manhanvien=nv.manhanvien
group by ddh.manhanvien)
--29) Đơn đặt hàng nào có số lượng hàng được đặt mua ít nhất? 
select ddh.sohoadon,ctdh.soluong
from chitietdathang ctdh join dondathang ddh on ctdh.sohoadon=ddh.sohoadon
group by ddh.sohoadon,ctdh.soluong
having soluong=(select top 1 ctdh.soluong
from chitietdathang ctdh join dondathang ddh on ctdh.sohoadon=ddh.sohoadon order by ctdh.soluong asc)

--30) Số tiền nhiều nhất mà mỗi khách hàng đã từng bỏ ra để đặt hàng trong các đơn đặt hàng là  bao nhiêu?
select top 1 sum(soluong*giaban-soluong*giaban*mucgiamgia/100) as tien_nhieu_nhat
from DONDATHANG inner join CHITIETDATHANG on DONDATHANG.SOHOADON = CHITIETDATHANG.SOHOADON
group by CHITIETDATHANG.SOHOADON
order by 1 desc -- sap xep theo cot 1

select MAKHACHHANG ,sum(ctdh.soluong*giaban-ctdh.soluong*giaban*mucgiamgia/100)
from chitietdathang ctdh join dondathang ddh on ctdh.sohoadon=ddh.sohoadon
group by makhachhang
having sum(ctdh.soluong*giaban-ctdh.soluong*giaban*mucgiamgia/100)>=all(
select sum(ctdh.soluong*giaban-ctdh.soluong*giaban*mucgiamgia/100)
from chitietdathang ctdh join dondathang ddh on ctdh.sohoadon=ddh.sohoadon
group by ddh.sohoadon
)

