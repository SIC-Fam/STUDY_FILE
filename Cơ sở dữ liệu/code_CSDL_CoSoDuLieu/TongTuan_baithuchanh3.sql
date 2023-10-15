create database QLSV
use QLSV

CREATE TABLE KHOA(
Makh varchar(20) not null ,
Vpkh varchar(50) 
CONSTRAINT PK_KHOA PRIMARY KEY (Makh)
);

CREATE TABLE LOP(
Malop varchar(20) not null ,
Makh varchar(20),
CONSTRAINT PK_LOP PRIMARY KEY (Malop),
CONSTRAINT FK_LOP FOREIGN KEY (Makh)
REFERENCES KHOA(Makh)
);

CREATE TABLE SINHVIEN(
Masv varchar(20) not null ,
Hosv varchar(50),
Tensv varchar(50),
Nssv date,
Dcsv varchar(50),
Loptr bit,
Malop varchar(20),
CONSTRAINT PK_SINHVIEN PRIMARY KEY (Masv),
CONSTRAINT FK_SINHVIEN FOREIGN KEY (Malop)
REFERENCES LOP(Malop)
);

CREATE TABLE MONHOC(
Mamh varchar(20) NOT NULL,
Tenmh varchar(20),
LT int,
TH int,
CONSTRAINT PK_MONHOC PRIMARY key(Mamh)
);


CREATE TABLE CTHOC(
Malop varchar(20),
HK int,
Mamh varchar(20)
constraint FK_CTHOC foreign key (Mamh) references MONHOC(Mamh),
CONSTRAINT FK1_CTHOC foreign key (Malop) references Lop(Malop),
);

CREATE TABLE DIEMSV(
Masv varchar(20),
Mamh varchar(20),
Lan int,
Diem float
CONSTRAINT FK_DIEMSV foreign key (Mamh) references MONHOC(Mamh),
CONSTRAINT FK1_DIEMSV foreign key (Masv) references SINHVIEN(Masv),
);


insert into KHOA
values('TLU_CNTT','CNTT'),
('TLU_HTTT','HTTT'),
('TLU_TTNT','TTNT'),
('TLU_KHMT','KHMT'),
('TLU_TH','TH'),
('TLU_KTPM','KTPM')

insert into LOP
values('CNTT1','TLU_CNTT'),
	('TH1','TLU_TH'),
	('KTPM1','TLU_KTPM'),
	('KHMT1','TLU_KHMT'),
('TH2','TLU_TH')

insert into SINHVIEN
values('0001','TONG','TUAN','2003-10-17','DAK LAK',1,'CNTT1'),
('0002','PHAM','VAN','2003-5-19','HA NOI',1,'TH1'),

('0003','CHI','QUYEN','2003-8-25','THUONG TIN',1,'TH1'),
('0004','NGUYEN','THUONG','2003-5-19','HAI DUONG',1,'TH2'),
('0005','LUONG','TU','2003-5-19','YEN BAI',1,'KTPM1'),
('0006','HA','HOANG','2003-5-19','THANH HOA',1,'KHMT1')

insert into SINHVIEN
VALUES
('0007','TRINH','HUONG','2003-8-29','THAI BINH',1,'CNTT1')


insert into MONHOC
values('DSTT1','DAI SO TUYEN TINH',15,15),
('CSDL1','CO SO DU LIEU',15,32),
('TRIET1','TRIET HOC',30,15),
('PLDC1','PHAP LUAT DAI CUONG',15,30),
('TA1','TIENG ANH 1',18,36),
('LINUX1','LINUX MA NGUON MO',20,25)


insert into CTHOC
values('CNTT1',1,'DSTT1'),
('TH1',2,'CSDL1'),
('TH1',2,'TA1'),
('TH2',3,'LINUX1'),
('KTPM1',4,'CSDL1'),
('TH2',4,'CSDL1')

INSERT INTO CTHOC
VALUES('TH1',1,'TRIET1')
insert into DIEMSV
values('0001','DSTT1',2,9.0),
('0002','CSDL1',4,10),
('0003','CSDL1',1,8.5),
('0004','TA1',1,7),
('0005','LINUX1',1,6),
('0006','TRIET1',3,4)
INSERT INTO DIEMSV
VALUES ('0008','CSDL1',1,2)
---------------------------------------------TRUY VAN------------------------------------------------
--CAU1:
SELECT * FROM LOP
--cau2:
SELECT Hosv,Tensv,Lop.Malop as LOP
FROM SINHVIEN
inner join lop on SINHVIEN.Malop=Lop.Malop
where lop.Malop='TH1'
--Cau3:
SELECT Hosv,Tensv,khoa.Makh as Khoa
FROM ((SINHVIEN
inner join lop on SINHVIEN.Malop=Lop.Malop)
inner join khoa on khoa.Makh=lop.Makh)
where khoa.Makh='TLU_CNTT'
--Cau4:
select * from cthoc
where Malop='TH1'
--Cau5
select Hosv,tensv,diem,lop.Malop
from diemsv
inner join sinhvien on diemsv.Masv=sinhvien.Masv
inner join lop on lop.Malop=sinhvien.Malop
where lop.Malop='TH1'
--Cau6:
select avg(DIEMSV.Diem) as diem,Lop.Malop
from DIEMSV 
inner join SINHVIEN on DIEMSV.Masv=SINHVIEN.Masv
inner join Lop on Lop.Malop =SINHVIEN.Malop
where DIEMSV.Lan=1 and Lop.Malop='TH1' AND Diemsv.Mamh='CSDL1'
group by Lop.Malop
--CAU7:
SELECT COUNT(SINHVIEN.Malop) AS SOLUONGSV,SINHVIEN.Malop
FROM SINHVIEN
WHERE SINHVIEN.Malop='TH2'
GROUP BY SINHVIEN.Malop
--CAU8:
SELECT COUNT(Mamh)AS [SO MON HOC],CTHOC.Malop
FROM CTHOC
WHERE (CTHOC.HK=1 OR CTHOC.HK=2) AND CTHOC.Malop='TH1'
GROUP BY CTHOC.Malop
--CAU9:
SELECT TOP 3 SINHVIEN.Hosv,SINHVIEN.Tensv ,DIEMSV.Diem,DIEMSV.Mamh
FROM DIEMSV
INNER JOIN SINHVIEN ON DIEMSV.Masv =SINHVIEN.Masv
WHERE DIEMSV.Mamh='CSDL1'
ORDER BY DIEMSV.DIEM DESC
--Cau 10:
select count(sinhvien.Malop) as [so luong sinh vien],sinhvien.Malop
from sinhvien
group by sinhvien.Malop
--Cau 11:
select top 1 count(sinhvien.masv) as sosinhvien,khoa.Makh as khoa
from khoa 
inner join lop on khoa.Makh=lop.Makh
inner join sinhvien on lop.Malop =sinhvien.Malop
group by khoa.Makh
order by sosinhvien desc
--cau12:
select top 1 count(sinhvien.masv) as sosinhvien,lop.Malop as lop
from lop 
inner join sinhvien on lop.Malop =sinhvien.Malop
where lop.makh='TLU_CNTT'
group by lop.Malop
order by sosinhvien desc
--CAU13:
SELECT top 1 DIEMSV.Mamh,count(diemsv.mamh) as soluongsv
FROM DIEMSV
WHERE DIEMSV.Diem<5 AND DIEMSV.Lan=1
GROUP BY DIEMSV.Mamh
order by soluongsv desc
--cau14:
select   max(diemsv.diem) as diem,sinhvien.Masv
from sinhvien 
inner join diemsv on diemsv.Masv = sinhvien.Masv 
group by SINHVIEN.Masv , diemsv.Mamh
--Cau15
select AVG(DIEM) AS [DIEM TRUNG BINH],LOP.Malop
from diemsv
inner join SINHVIEN on diemsv.Masv=sinhvien.Masv
inner join lop on sinhvien.Malop=lop.Malop
inner join khoa on khoa.Makh=lop.Makh
where khoa.Vpkh='CNTT'
GROUP BY LOP.Malop
--CAU16
SELECT SINHVIEN.Hosv,SINHVIEN.Tensv,DIEMSV.Mamh
FROM DIEMSV
INNER JOIN SINHVIEN ON DIEMSV.Masv=SINHVIEN.Masv
WHERE SINHVIEN.Malop='TH1'AND DIEMSV.DIEM >4
--CAU 17:
SELECT *
FROM DIEMSV
INNER JOIN SINHVIEN ON DIEMSV.Masv=SINHVIEN.Masv
WHERE SINHVIEN.Malop='TH2' AND DIEMSV.Diem>4 AND DIEMSV.Lan=1
--CAU18:


