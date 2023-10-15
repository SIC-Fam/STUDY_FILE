Create Database QLMS_new
use QLMS_new

Create Table SACH(
	MaSach nvarchar(10) not Null Primary Key,
	TenSach nvarchar(20),
	TenNXB nvarchar(20),
)

insert SACH values ('1','a','a1'),
('2','b','b1'),
('3','c','c1');


Create Table DOC_GIA(
	SoThe int not Null Primary Key,
	Hoten nvarchar(20),
	DiaChi nvarchar(20),
	DienThoai nvarchar(10),
)

select * FROM DOC_GIA

insert DOC_GIA values ('1',N'Phú Anh',N'Hà Nội','123456781'),
('2',N'Quang Anh',N'Hà Nội','123456782'),
('3',N'Duy Anh',N'Hà Nội','123456783');

Create Table MUON_SACH(
	MaSach nvarchar(10) not null,
	SoThe int not null,
	NgayMuon datetime,
	NgayTra datetime,
	primary key(masach,sothe),
	FOREIGN KEY (MaSach)REFERENCES SACH(MaSach),
	FOREIGN KEY (SoThe) REFERENCES DOC_GIA(SoThe),
)

insert MUON_SACH values ('3','','2020-02-01','2010-3-20')
('3','1','2020-02-01','2010-3-20'),
('3','2','2021-10-22','2021-11-22'),
('2','3','2021-10-22','2021-11-22'),
('1','3','2021-10-22','2021-11-22'),
('1','2','2021-10-22','2021-11-22'),
('1','1','2021-10-22','2021-11-22'),
('2','2','2021-9-22','2021-11-22'),
('3','3','2021-10-22','2021-11-22');


select * from MUON_SACH
select * from DOC_GIA
select * from SACH
--Đề khác
select  * 
from DOC_GIA dg join MUON_SACH ms on dg.SoThe=ms.SoThe
where YEAR(ngaymuon)='2021' and MONTH(ngaymuon)='10'

--select * from MUON_SACH

select ms.SoThe,hoten, count(*) as 'Số lần mượn'
from MUON_SACH ms join DOC_GIA dg on ms.SoThe=dg.SoThe 
group by ms.SoThe,hoten

select dg.sothe,dg.Hoten,count(dg.sothe) as 'Số lần mượn'
from DOC_GIA dg join MUON_SACH ms on dg.SoThe=ms.SoThe
group by dg.SoThe,dg.Hoten
having count(dg.sothe) >= all(select count(dg.sothe)
from DOC_GIA dg join MUON_SACH ms on dg.SoThe=ms.SoThe
group by dg.SoThe)

--Đề 3
select distinct * 
from DOC_GIA dg join MUON_SACH ms on dg.SoThe=ms.SoThe
where NgayMuon='2020-02-01' and NgayTra ='2010-3-20'

select ngaymuon, count(*) as 'Số lần mượn'
from MUON_SACH
group by NgayMuon

select dg.sothe,dg.Hoten,count(dg.sothe) as 'Số lần mượn'
from DOC_GIA dg join MUON_SACH ms on dg.SoThe=ms.SoThe
group by dg.SoThe,dg.Hoten
having count(dg.sothe) >= all(select count(dg.sothe)
from DOC_GIA dg join MUON_SACH ms on dg.SoThe=ms.SoThe
group by dg.SoThe)

select dg.sothe,dg.Hoten,count(dg.sothe) as 'Số lần mượn'
from DOC_GIA dg join MUON_SACH ms on dg.SoThe=ms.SoThe
group by dg.SoThe,dg.Hoten
having count(dg.sothe) = (
select top 1 count(*) from DOC_GIA dg join MUON_SACH ms on dg.SoThe=ms.SoThe
group by dg.SoThe
order by count(*) desc)