create database de5
use de5

create table sinhvien(
	masinhvien char(10) not null primary key,
	hotensv nvarchar(30),
	namsinh int,
	quequan nvarchar(30),
	hocluc nvarchar(10)
)

insert into sinhvien values ('123',N'Nguyễn Vũ','2003',N'Hà Nội','Xuất sắc'),
('124',N'Nguyễn Long','2003',N'Hà Nội','Xuất sắc'),
('125',N'Lưu Hoàng','2003',N'Hà Nội','Xuất sắc');


create table detai(
	madetai char(10) not null primary key,
	tendetai nvarchar(30),
	chunhiemdetai nvarchar(30),
	kinhphi int
)

insert into detai values ('1a',N'Môi Trường',N'Hồng Lan','1000000'),
('1b',N'Khởi Nghiệp',N'Hồng Lan','1000000'),
('1c',N'Công nghệ',N'Hồng Lan','1000000');


create table sv_dt(
	masinhvien char(10) not null,
	madetai char(10) not null,
	noithuctap nvarchar(30),
	khoangcach int,
	ketqua nvarchar(10)
	primary key(masinhvien,madetai)
	foreign key (masinhvien) references sinhvien(masinhvien),
	foreign key(madetai) references detai(madetai)
)

insert into sv_dt values ('125','1c',N'Cầu Giấy','99','Tốt'),
('124','1c',N'Cầu Giấy','101','Tốt'),
('123','1b',N'Cầu Giấy','101','Tốt'),
('124','1b',N'Cầu Giấy','101','Tốt'),
('125','1b',N'Cầu Giấy','101','Tốt'),
('123','1c',N'Cầu Giấy','101','Tốt')


select noithuctap,khoangcach
from sv_dt
where khoangcach>100

select tendetai,count(*) as 'so sinh vien'
from detai dt join sv_dt on dt.madetai=sv_dt.madetai
group by tendetai

select distinct *
from detai dt 
where dt.madetai not in (select madetai from sv_dt)