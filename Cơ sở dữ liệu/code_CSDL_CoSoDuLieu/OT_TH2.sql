create database OT_TH2
use OT_TH2

create table khachhang(
	makhachhang varchar(10) not null primary key,
	tencongty nvarchar(30),
	tengiaodich nvarchar(30),
	diachi nvarchar (30),
	email varchar(30),
	dienthoai varchar(10),
	fax varchar(30)
)

Insert into KHACHHANG values ('523','cong ty 1','gd1',N'Hà Nội','hanoi1@gmail.com','0123456789','fax1'),
('524','cong ty 2','gd2',N'Hà Nội','hanoi2@gmail.com','0123456788','fax1'),
('525','cong ty 3','gd3',N'Hà Nội','hanoi3@gmail.com','0123456787','fax2'),
('526','cong ty 4','gd4',N'Hà Nội','hanoi4@gmail.com','0123456786','fax3'),
('527','cong ty 5','gd5',N'Quảng Yên','quangyen1@gmail.com','0123456785','fax4');

create table nhanvien(
	manhanvien varchar(10) not null primary key,
	ho nvarchar(30),
	ten nvarchar(30),
	ngaysinh date,
	ngaylamviec date,
	diachi nvarchar(30),
	dienthoai varchar(10),
	luongcoban int,
	phucap int
)

Insert into NHANVIEN values ('123',N'Nguyễn',N'Hoàng','2002-1-1','2022-1-4',N'Hà Nội','0123456789','10','10')
Insert into NHANVIEN values ('1234',N'Nguyễn',N'Vũ','2002-10-20','2021-12-4',N'Hà Nội','0123456789','10','10'),
('125',N'Lưu',N'Hoàng','2002-3-2','2022-2-3',N'Hà Nội','0123456799','10','10'),
('126',N'Phạm',N'Hoàng','2001-2-5','2022-3-2',N'Hà Nội','0123455899','9','10'),
('127',N'Minh',N'Hoàng','2002-1-3','2022-3-4',N'Hà Nội','0123454899','2','10'),
('128',N'Nguyễn',N'Long','2002-6-5','2022-1-3',N'Hà Nội','0123427899','10','3'),
('129',N'Nguyễn',N'Lâm','2002-1-1','2022-3-6',N'Hà Nội','0123453789','10','10'),
('130',N'Trương',N'Đức','2002-2-3','2022-2-8',N'Hà Nội','0123456789','10','10'),
('131',N'Dương',N'Hoàng','2002-2-3','2022-5-3',N'Hà Nội','0123458789','10','10');

create table loaihang(
	maloaihang varchar(10) not null primary key,
	tenloaihang nvarchar(30)
)

insert into LOAIHANG values  (1,N'Đồ gia dụng'),
(2,N'Thực phẩm'),
(3,N'Đồ diện tử'),
(4,N'Đồ dùng cá nhân');

create table nhacungcap(
	macongty varchar(10) not null primary key,
	tencongty nvarchar(30),
	tengiaodich nvarchar(30),
	diachi nvarchar(30),
	dienthoai varchar(10),
	fax varchar(30),
	email varchar(30)
)

insert into NHACUNGCAP values ('CT1','cong ty 1','gd1',N'Nguyễn Trãi','1234567890','fax_1','ntrai1@gmail.com'),
('CT2','cong ty 2','gd2',N'Nguyễn Trãi','1234567892','fax_2','ntrai2@gmail.com'),
('CT3','cong ty 3','gd3',N'Nguyễn Trãi','1234567893','fax_3','ntrai3@gmail.com'),
('CT4','cong ty 4','gd4',N'Nguyễn Trãi','1234567894','fax_4','ntrai4@gmail.com'),
('CT5',N'VIỆT TIẾN','gd4',N'Nguyễn Trãi','1234567895','fax_5','ntrai5@gmail.com'),
('CT6','cong ty 6',N'VINAMILK',N'Nguyễn Trãi','1234567896','fax_6','ntrai6@gmail.com');

create table mathang(
	mahang varchar(10) not null primary key,
	tenhang nvarchar(30),
	macongty varchar(10) not null,
	maloaihang varchar(10)not null,
	soluong int,
	donvitinh nvarchar(10),
	giahang int,
	foreign key (maloaihang) references loaihang(maloaihang),
	foreign key (macongty) references nhacungcap(macongty)
)

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

create table dondathang(
	sohoadon varchar(10) not null primary key,
	makhachhang varchar(10) not null,
	manhanvien varchar(10) not null,
	ngaydathang date,
	ngaygiaohang date,
	ngaychuyenhang date,
	noigiaohang nvarchar(30),
	foreign key (makhachhang) references khachhang(makhachhang),
	foreign key (manhanvien) references nhanvien(manhanvien)
)

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
	sohoadon varchar(10) not null,
	mahang varchar(10) not null,
	giaban int,
	soluong int,
	mucgiamgia int,
	primary key(sohoadon,mahang),
	foreign key (sohoadon) references dondathang (sohoadon),
	foreign key (mahang) references mathang(mahang)
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

--1) Bổ sung ràng buộc thiết lập giá trị mặc định bằng 1 cho cột SOLUONG và bằng 0 cho cột  MUCGIAMGIA trong bảng CHITIETDATHANG. 
alter table chitietdathang
	add constraint df_soluong default 1 for soluong
alter table chitietdathang
	add constraint df_mucgiamgia default 0 for mucgiamgia

--alter table chitietdathang
--	drop constraint df_soluong

--2) Bổ sung cho bảng DONDATHANG ràng buộc kiểm tra ngày giao hàng và ngày chuyển  hàng phải sau hoặc bằng với ngày đặt hàng. 
alter table dondathang
	add constraint chk_day check(ngaydathang<=ngaygiaohang and ngaydathang<=ngaychuyenhang)

--3) Bổ sung ràng buộc cho bảng NHANVIEN để đảm bảo rằng một nhân viên chỉ có thể làm  việc trong công ty khi đủ 18 tuổi và không quá 60 tuổi 
alter table nhanvien
	add constraint chk_age check(datediff(yy,ngaysinh,ngaylamviec) between 18 and 60)

--4) Cho biết danh sách các đối tác cung cấp hàng cho công ty.
select * from nhacungcap
--13)Đơn đặt hàng số 1 do ai đặt và do nhân viên nào lập, thời gian và địa điểm giao hàng là ở đâu? 

--14) Hãy cho biết số tiền lương mà công ty phải trả cho mỗi nhân viên là bao nhiêu (lương = lương cơ bản + phụ cấp) 

--15)Trong đơn đặt hàng số 3 đặt mua những mặt hàng nào và số tiền mà khách hàng phải trả cho mỗi mặt hàng là bao nhiêu? 
--Số tiền phả trả được tính theo công thức:  SOLUONG×GIABAN – SOLUONG×GIABAN×MUCGIAMGIA/100). 

--16) Hãy cho biết có những khách hàng nào lại chính là đối tác cung cấp hàng của công ty (tức là có cùng tên giao dịch). 

--17) Trong công ty có những nhân viên nào có cùng ngày sinh? 

--18) Những đơn đặt hàng nào yêu cầu giao hàng ngay tại công ty đặt hàng và những đơn đó là  của công ty nào? @)!#(

--19) Cho biết tên công ty, tên giao dịch, địa chỉ và điện thoại của các khách hàng và các nhà  cung cấp hàng cho cửa hàng. 

--20) Những mặt hàng nào chưa từng được khách hàng đặt mua? 

--21) Những nhân viên nào của công ty chưa từng lập bất kỳ một hoá đơn đặt hàng nào? 

--22) Những nhân viên nào của công ty có lương cơ bản cao nhất? 

--23) Năm 2020, những mặt hàng nào chỉ được đặt mua đúng một lần. @#%$@#%


--24) Hãy cho biết tổng số tiền của mỗi khách hàng đã bỏ ra để mua hàng của công ty. 
--SOLUONG×GIABAN – SOLUONG×GIABAN×MUCGIAMGIA/100

--25) Mỗi một nhân viên của công ty đã lập bao nhiêu đơn đặt hàng
--(nếu nhân viên chưa từng lập  hóa đơn nào thì trả về kết quả bằng 0). 

--26) Cho biết tổng số tiền hàng mà cửa hàng thu được trong mỗi tháng của năm 2020. 


--27) Cho biết tổng số tiền lãi mà công ty thu được từ mỗi mặt hàng trong năm 2020. 
--28) Nhân viên nào của công ty bán được số lượng hàng nhiều nhất và số lượng hàng bán được  của các nhân viên này là bao nhiêu? 
--29) Đơn đặt hàng nào có số lượng hàng được đặt mua ít nhất? 

--30) Số tiền nhiều nhất mà mỗi khách hàng đã từng bỏ ra để đặt hàng trong các đơn đặt hàng là  bao nhiêu?