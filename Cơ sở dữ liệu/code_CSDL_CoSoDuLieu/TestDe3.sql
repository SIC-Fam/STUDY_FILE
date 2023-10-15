create database muonsachd3
use muonsachd3

create table SACH(
	masach varchar(10) not null primary key,
	tensach nvarchar(30),
	tenNXB nvarchar(30)
)

insert into SACH values ('1','Dac nhan tam','Kim dong'),
('2','Nha gia kim','Kim dong'),
('3','Tren duong bang','Kim dong')

create table DOC_GIA(
	sothe varchar(10) not null primary key,
	hoten nvarchar(30),
	diachi nvarchar(30),
	sodienthoai varchar(10)
)	

insert into DOC_GIA values ('1a',N'Nguyễn Vũ',N'Hà Nội','123456781'),
('1b',N'Nguyễn Long',N'Hà Nội','123456782'),
('1c',N'Nguyễn Lâm',N'Hà Nội','123456783'),
('1d',N'Nguyễn Khánh',N'Hà Nội','123456784')

create table MUON_SACH(
	masach varchar(10) not null,
	sothe varchar(10) not null,
	ngaymuon date,
	ngaytra date,
	primary key(masach,sothe),
	foreign key (masach) references Sach(masach),
	foreign key (sothe) references DOC_GIA(sothe)
)


insert into MUON_SACH values ('3','1b','2020-2-1','2020-3-20'),
('3','1d','2020-2-1','2020-3-20'),
('3','1a','2020-2-1','2020-3-20'),
('1','1a','2022-10-10','2022-11-10'),
('1','1c','2022-10-10','2022-11-10'),
('3','1c','2022-10-10','2022-11-10'),
('2','1c','2022-12-10','2022-1-10'),
('2','1b','2022-12-10','2022-1-10');

select * from MUON_SACH


select hoten--ngaymuon,ngaytra
from DOC_GIA dg join MUON_SACH ms on dg.sothe=ms.sothe
where ngaymuon='2020-2-1' and ngaytra='2020-3-20'

select ngaymuon, count(*) as 'So lan muon sach'
from MUON_SACH
group by ngaymuon

select ms.sothe, hoten
from DOC_GIA dg join MUON_SACH ms on dg.sothe=ms.sothe
group by ms.sothe,hoten
having count(*)>=all(select count(*) from MUON_SACH group by sothe)