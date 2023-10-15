create database test
use test

create table MayBay(
	soHieu char(10) not null primary key,
	soGhe char(10),
	HangSX char(10)
)

insert into MayBay values ('ab128','a128','Boeing'),
('ab123','a123','VNair'),
('ab124','a124','VNair'),
('ab125','a125','VNair'),
('ab126','a126','VNair'),
('ab127','a127','VNair');

create table ChuyenBay(
	maChuyenBay char(10) not null, --primary key,
	soHieu char(10) not null,
	ngayBay date,
	noiDi nvarchar(20),
	noiDen nvarchar(20),
	foreign key (soHieu) references MayBay(soHieu)
)

insert into ChuyenBay values ('cb128','ab128','2015-8-9','Hà Nội','Hải Phòng'),
('cb128','ab128','2015-8-9','Hà Nội','HCM'),
('cb128','ab128','2022-8-9','Hà Nội','Hải Phòng'),
('cb123','ab123','2022-8-9','Hà Nội','Hải Phòng'),
('cb123','ab124','2022-8-4','xyz','Hà Nội'),
('cb123','ab123','2015-8-9','xyz','Hà Nội'),
('cb123','ab123','2015-8-9','xyz','Hà Nội'),
('cb123','ab123','2022-8-9','xyz','Hà Nội'),
('cb123','ab123','2015-8-9','xyz','Hà Nội'),
('cb123','ab123','2022-8-9','xyz','Hà Nội'),
('cb123','ab123','2022-8-9','xyz','Hà Nội'),
('cb123','ab123','2022-8-9','xyz','Hà Nội'),
('cb123','ab123','2022-8-9','xyz','Hà Nội'),
('cb123','ab123','2022-8-9','xyz','Hà Nội'),
('cb123','ab123','2022-8-9','xyz','Hà Nội'),
('cb123','ab123','2022-8-9','xyz','Hà Nội'),

('cb124','ab123','2022-8-9','xyz','Hà Nội'),
('cb124','ab123','2022-8-9','xyz','Hà Nội'),
('cb124','ab123','2022-8-9','xyz','Hà Nội'),
('cb124','ab123','2022-8-9','xyz','Hà Nội'),
('cb124','ab123','2022-8-9','xyz','Hà Nội'),
('cb124','ab123','2022-8-9','xyz','Hà Nội');

--câu 1 in ra tt của cb có hãng sx là Boeing
select * 
from ChuyenBay cb inner join MayBay mb on cb.soHieu=mb.soHieu
where HangSX ='Boeing'

--câu 2 Thống kê số lượng chuyến bay mỗi nơi đến trong nam 2015
select noiDen, count(*) as 'Số lượng'
from ChuyenBay
group by noiDen,year(ngayBay)
having year(ngayBay)='2015'

--câu 3
select maChuyenBay, count(*) as 'Số lần'
from ChuyenBay
group by maChuyenBay, noiDen
having noiDen='Hà N?i' and count(*)>10