create database QLSV_Khanh
USE QLSV_Khanh
CREATE TABLE KHOA(
Makh nvarchar(10) primary key,
Vpkh nvarchar(10))
insert into KHOA values('CNTT','CNTT'),
('KT','KT'),
('CX','CX');
CREATE TABLE LOP(
Malop nvarchar(10) primary key,
Makh nvarchar(10),
foreign key(Makh) references KHOA(Makh))
insert into LOP values('CNTT1','CNTT'),('CNTT2','CNTT'),('TH1','CNTT'),('TH2','CNTT');
CREATE TABLE SINHVIEN(
Masv nvarchar(10) primary key,
Hosv nvarchar(10),
Tensv nvarchar(10),
Nssv date,
Dcsv nvarchar(10),
Loptr nvarchar(3) default 'No',
Malop nvarchar(10),
foreign key(Malop) references LOP(Malop))
insert into SINHVIEN values('215',N'Nguyễn','Lam','2003-7-8',N'Thanh Hóa',' ','CNTT1'),
('216',N'Đỗ',N'Hùng','2003-8-8',N'Bắc Giang','Yes','TH1'),
('298',N'Nguyễn',N'Vũ','2003-3-5',N'Hà Nội',' ','TH1'),
('297',N'Hoàng','Vinh','2003-9-28',N'Hà Nội',' ','TH2'),
('253',N'Lê','Linh','2003-7-19',N'Hải Phòng','Yes','TH2');
CREATE TABLE MONHOC(
Mamh nvarchar(10) primary key,
Tenmh nvarchar(20),
LT INT,
TH INT)
insert into MONHOC values('CSDL',N'Cơ sở dữ liệu',45,45),
(N'Toán 3',N'Đại số tuyến tính',90,0),
('LTNC',N'Lập trình nâng cao',45,45),
('TRR',N'Toán rời rạc',45,45);
insert into MONHOC values('Python',N'Lập trình python',45,45),('GT2',N'Giải tích nhiều biến',90,0);
insert into MONHOC values('Linux',N'Linux và mẫ nguồn mở',45,45),('CTDL',N'CTDL và giải thuật',45,45);
CREATE TABLE CTHOC(
Malop nvarchar(10),
HK int,
Mamh nvarchar(10),
foreign key(Malop) references LOP(Malop),
foreign key(Mamh) references MONHOC(Mamh))
insert into CTHOC values('TH1',2,'Linux'),('TH1',3,'Python'),('TH1',2,N'GT2');
insert into CTHOC values('TH1',1,'TRR'),('TH1',2,'CSDL'),('TH1',1,N'Toán 3');
insert into CTHOC values('TH1',2,N'LTNC')
insert into CTHOC values('TH1',2,'Python')
create table DIEMSV(
Masv nvarchar(10),
Mamh nvarchar(10),
foreign key(Mamh) references MONHOC(Mamh),
FOReIGN KEY(Masv) references SINHVIEN(Masv),
Lan int,
Diem FLOAT)
insert into DIEMSV values('215','CSDL',1,7),('216','CSDL',1,3),
('298','CSDL',1,8),('297','CSDL',1,5.5),('253','CSDL',1,9),
('216','CSDL',2,7.5);
insert into DIEMSV values('215','CSDL',1,7),('216','CSDL',1,3)
insert into DIEMSV values('215','TRR',1,2),('216','LTNC',1,10),
('298','TRR',1,8),('297',N'Toán 3',1,5.5),('253','LTNC',1,9),
('216',N'Toán 3',1,1),('215','TRR',2,6),('216',N'Toán 3',2,3),('216',N'Toán 3',1,3);
insert into DIEMSV values('215','GT2',1,2.5),('297','Linux',1,3);
insert into DIEMSV values('298','GT2',1,9.6),('298','Linux',1,8.5),('298','Python',3,9),
('253','GT2',1,8.8),('253','Linux',1,7),('253','Python',3,9);
delete from DIEMSV
DROP TABLE DIEMSV
--1. Cho biết danh sách lớp
SELECT Malop
from LOP
--2. Cho biết danh sách sinh viên lớp TH1.
SELECT *
from SINHVIEN
WHERE Malop = 'TH1'
--3. Cho biết danh sách SV khoa CNTT
select SV.*
from SINHVIEN SV JOIN LOP L ON SV.Malop = L.Malop JOIN KHOA K ON K.Makh = L.Makh
WHERE K.Makh = 'CNTT'
--4. Cho biết chương trình học của lớp TH1
SELECT Mamh,HK
FROM CTHOC
WHERE Malop = 'TH1'
--5. Điểm lần 1 môn CSDL của SV lớp TH1.
select SINHVIEN.Masv,Hosv,Tensv,Diem
from SINHVIEN JOIN DIEMSV ON DIEMSV.Masv = SINHVIEN.Masv
WHERE Lan = 1 and Mamh = 'CSDL' and Malop = 'TH1'
--6.Điểm trung bình lần 1 môn CTDL của lớp TH1.
select avg(Diem) as DTB
from SINHVIEN JOIN DIEMSV ON DIEMSV.Masv = SINHVIEN.Masv
WHERE Lan = 1 and Mamh = 'CSDL' and Malop = 'TH1'
--7.Số lượng SV của lớp TH2.
select count(*) as Số_lượng_SV
from SINHVIEN
where Malop = 'TH2'
--8.Lớp TH1 phải học bao nhiêu môn trong HK1 và HK2.
select count(*) as So_Mon_Trong_HK1_Hk2
from CTHOC
where HK = 1 or HK = 2
--9. Cho biết 3 SV đầu tiên có điểm thi lần 1 cao nhất môn CSDL.
select TOp 3 SINHVIEN.*,Diem
from SINHVIEN JOIN DIEMSV ON DIEMSV.Masv = SINHVIEN.Masv
ORDER BY Diem DESC
--10. Cho biết sĩ số từng lớp.
select count(*) as Sĩ_số , Malop
from SINHVIEN
group by Malop
--11. Khoa nào đông SV nhất.
select Makh
from SINHVIEN join LOP on LOP.Malop = SINHVIEN.Malop
group by Makh
having count(Masv) >= all (select count(Masv)
from SINHVIEN join LOP on LOP.Malop = SINHVIEN.Malop
group by Makh)
--12. Lớp nào đông nhất khoa CNTT.
select LOP.Malop
from SINHVIEN join LOP on LOP.Malop = SINHVIEN.Malop
where Makh = 'CNTT'
group by LOP.Malop
having count(Masv) >= all (select count(Masv)
from SINHVIEN join LOP on LOP.Malop = SINHVIEN.Malop
group by LOP.Malop)
--13.Môn học nào mà ở lần thi 1 có số SV không đạt nhiều nhất.
select Mamh
from DIEMSV
where Lan = 1 and Diem < 4
GROUP BY Mamh 
having count(Masv) >= all(select count(Masv)
from DIEMSV
where Lan = 1 and Diem < 4
GROUP BY Mamh )
--14. Tìm điểm thi lớn nhất của mỗi SV cho mỗi môn học (vì SV được thi nhiều lần).
select *
from DIEMSV 
group by Masv,Mamh
--15. Điểm trung bình của từng lớp khoa CNTT ở lần thi thứ nhất môn CSDL.
select Malop,round(avg(Diem),2) as DTB
from DIEMSV join SINHVIEN on DIEMSV.Masv = SINHVIEN.Masv
where Mamh = 'CSDL' and Lan = 1
group by Malop
--16.Sinh viên nào của lớp TH1 đã thi đạt tất cả các môn học ở lần 1 của HK2.
select SINHVIEN.Masv,Hosv,Tensv
from CTHOC , DIEMSV,SINHVIEN
where Diem >= 4 and CTHOC.Malop = 'TH1' and HK = 2 and Lan = 1
and DIEMSV.Mamh = CTHOC.Mamh and SINHVIEN.Masv = DIEMSV.Masv  
group by SINHVIEN.Masv,Hosv,Tensv
having count(DIEMSV.Masv) = (select count(Mamh) from CTHOC where Malop = 'TH1' and HK = 2)



