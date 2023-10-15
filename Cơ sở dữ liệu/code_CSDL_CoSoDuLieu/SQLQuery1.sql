create database qlsv;
use qlsv;

create table KHOA(
	Makh char(10) not null primary key,
	Vpkh varchar(20),
);

create table LOP(
	Malop char(10) not null primary key,
	Makh char(10),
	foreign key (Makh) references KHOA(Makh));

create table SINHVIEN(
	Masv char(10) not null primary key,
	Hosv char(10),
	Tensv varchar(30),
	Nssv int,
	Dcsv varchar(30),
	Loptr Bit,
	Malop char(10),
	foreign key (Malop) references Lop(Malop),
);



create table MONHOC(
	Mamh char(10) not null primary key,
	Tenmh varchar(20),
	LT int,
	TH int,
);

create table CTHOC(
	Malop char(10) not null,
	HK int,
	Mamh char(10) not null,
	foreign key (Mamh) references MONHOC(Mamh),
	foreign key (Malop) references LOP(Malop));



create table DIEMSV(
	Masv char(10) not null,
	Mamh char(10) not null,
	lan int,
	diem float,
	primary key(Masv,Mamh),
	foreign key (Masv) references SINHVIEN(Masv),
	foreign key(Mamh) references MONHOC(Mamh));

Insert into KHOA values('CNTT1','CNTT');
Insert into KHOA values('CNTT2','CNTT');
Insert into KHOA values ('CNTT','100B5');
Insert into KHOA values ('KT','200B5');
Insert into KHOA values ('CK','300B5');
Insert into LOP values ('CNTT1','CNTT');
Insert into LOP values ('CNTT2','CNTT');
Insert into LOP values ('KT1','KT');
Insert into LOP values ('KT2','KT');
Insert into LOP values ('CK1','CK');
Insert into LOP values ('CK2','CK');
Insert into SINHVIEN values ('101',N'Nguyễn',N'Long','2003',N'Quảng Ninh','0','CNTT1');
Insert into SINHVIEN values ('102',N'Lưu',N'Hoàng','2003',N'Hà Nội','0','CNTT2');
Insert into SINHVIEN values ('103',N'Nguyễn',N'Vũ','2003',N'Hà Nội','0','CNTT2');
Insert into SINHVIEN values ('104',N'Nguyễn',N'Lâm','2003',N'Tây Nguyên','1','KT1');
Insert into SINHVIEN values ('105',N'Trương',N'Đức','2003',N'Hà Nội','0','CK2');
Insert into SINHVIEN values ('106',N'Nguyễn',N'Quý','2003',N'Quảng Ninh','0','KT2');
Insert into SINHVIEN values ('107',N'Hoàng',N'Nhung','2003',N'Thanh Hóa','0','KT1');
Insert into SINHVIEN values ('108',N'Dương',N'Hoàng','2003',N'Hà Nội','0','CK1');
Insert into SINHVIEN values ('109',N'Đinh',N'Khánh','2003',N'Hà Nội','0','CNTT1');
Insert into SINHVIEN values ('110',N'Phạm',N'Hoàng','2003',N'Phú Thọ','0','CNTT1'),
('111',N'Phạm',N'Hà','2003',N'Hà Nội','0','CNTT1');

Insert into MONHOC values ('11',N'Lập trình nâng cao','45','15');
Insert into MONHOC values ('21',N'Cấu trúc dữ liệu','45','15');
Insert into MONHOC values ('31',N'Cơ sở dữ liệu','45','15');
Insert into MONHOC values ('41',N'Lập trình hướng đối tượng','45','15');
Insert into MONHOC values ('51',N'Triết học','30','0');
Insert into MONHOC values ('61',N'Đại số tuyến tính','45','0');

Insert into CTHOC values ('KT1','1','11');
Insert into CTHOC values ('KT2','2','21');
Insert into CTHOC values ('CNTT1','3','31');
Insert into CTHOC values ('KT2','1','41');
Insert into CTHOC values ('CNTT2','3','51');
Insert into CTHOC values ('CNTT1','5','61');


Insert into DIEMSV values ('102','11','1','9');
Insert into DIEMSV values ('103','21','0','9');
Insert into DIEMSV values ('104','11','1','9');
Insert into DIEMSV values ('105','31','0','9');
Insert into DIEMSV values ('106','41','2','9');
Insert into DIEMSV values ('108','61','2','9');
Insert into DIEMSV values ('107','51','1','9');
Insert into DIEMSV values ('101','21','1','9');

select * from KHOA;
select * from LOP where (Malop = 'cntt1');

--Câu 3 Trả về sinh viên học Khoa CNTT
select * from SINHVIEN,LOP where (Makh='CNTT') and
(SINHVIEN.MaLop=LOP.MaLop);

select * from SINHVIEN inner join Lop on SINHVIEN.MaLop=LOP.MaLop
where Makh='CNTT';

select * from MONHOC;
select * from CTHOC;
select * from DIEMSV;






