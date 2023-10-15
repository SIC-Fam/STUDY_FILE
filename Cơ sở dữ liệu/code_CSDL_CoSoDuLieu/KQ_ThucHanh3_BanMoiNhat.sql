create database BTH3_new
use BTH3_new

create table KHOA(
	Makh varchar(10) not null primary key,
	Vpkh varchar(20)
)
 
insert into KHOA values ('1','CNTT'),
('2','KT'),
('3','CK'),
('4','CT'),
('5','MT');

create table LOP (
	Malop varchar(10) not null primary key,
	Makh varchar(10) not null,
	foreign key (Makh) references Khoa(Makh)
)

insert into LOP values ('TH2','1'),
('TH1','1'),
('CNTT1','1'),
('CNTT2','1'),
('KT1','2'),
('KT2','2'),
('CK1','3'),
('CK2','3'),
('CT1','4'),
('CT2','4'),
('MT1','5'),
('MT2','5');

create table SINHVIEN (
	Masv varchar(10) not null primary key,
	Hosv nvarchar(10),
	Tensv nvarchar(10),
	Nssv int,--Nam sinh sv
	Dcsv nvarchar(50),
	Loptr bit,
	Malop varchar(10) not null,
	foreign key (Malop) references Lop(Malop)
)

Insert into SINHVIEN values ('116',N'Nguyễn',N'C','2002',N'Hà Nội','0','TH1'),
('101',N'Nguyễn',N'Long','2003',N'Quảng Ninh','0','CNTT1'),
('103',N'Nguyễn',N'Vũ','2003',N'Hà Nội','0','CNTT1'),
('104',N'Lưu',N'Hoàng','2003',N'Hà Nội','0','CNTT2'),
('105',N'Phạm',N'Hoàng','2003',N'Hà Nội','0','CK1'),
('106',N'Nguyễn',N'Long','2003',N'Quảng Ninh','0','KT1'),
('107',N'Nguyễn',N'Lâm','2003',N'Hà Nội','0','CT1'),
('108',N'Nguyễn',N'Quyền','2003',N'Hà Nội','1','MT1'),
('109',N'Trương',N'Đức','2003',N'Hà Nội','0','CK2'),
('110',N'Nguyễn',N'Vinh','2003',N'Hà Nội','0','TH1'),
('111',N'Nguyễn',N'Quý','2003',N'Quảng Ninh','0','KT2'),
('112',N'Nguyễn',N'Hiển','2003',N'Hà Nội','0','TH1'),
('113',N'Nguyễn',N'Vũ','2003',N'Hà Nội','0','TH1'),
('114',N'Nguyễn',N'A','2002',N'Hà Nội','0','TH2'),
('115',N'Nguyễn',N'B','2002',N'Hà Nội','0','TH2');

create table MONHOC(
	Mamh varchar(10) not null primary key,
	Tenmh nvarchar(30),
	LT int,
	TH int
)

Insert into MONHOC values ('10',N'Kinh tế lượng','45','15'),
('11',N'Nhập môn lập trình','45','15'),
('21',N'Cấu trúc dữ liệu','45','15'),
('31',N'Cơ sở dữ liệu','45','15'),
('41',N'Giải tích','45','15'),
('51',N'Triết học','30','0'),
('61',N'kỹ thuật hóa học','45','0');

create table CTHOC
(
	Malop varchar(10),
	HK int,
	Mamh varchar(10),
	foreign key(Malop) references LOP(Malop),
	foreign key(Mamh) references MONHOC(Mamh),
);

Insert into CTHOC values ('TH1','3','41'),
('KT1','1','10'),
('KT2','1','10'),
('CK1','2','41'),
('CK2','3','41'),
('CNTT1','3','21'),
('CNTT2','3','21'),
('TH1','3','21'),
('TH1','3','31'),
('CT1','1','51'),
('CT2','1','51'),
('MT1','5','61'),
('MT2','5','61');


create table DIEMSV
(
	Masv varchar(10),
	Mamh varchar(10),
	Lan int,
	Diem float,
	foreign key(Masv) references SINHVIEN(Masv),
	foreign key(Mamh) references MONHOC(Mamh),
);


Insert into DIEMSV values ('116','41','1','4.9'),
('110','41','1','9'),
('105','41','1','3'),
('106','41','1','3'),
('108','41','1','3'),
('105','31','2','3'),
('106','41','2','3'),
('108','61','2','3'),
('110','31','1','9'),
('112','31','1','9'),
('113','31','1','10'),
('101','21','1','9'),
('110','11','1','9'),
('103','21','2','9'),
('104','11','1','8'),
('105','31','2','8'),
('106','41','2','9'),
('108','61','2','9'),
('107','51','1','9');

--1. Cho biết danh sách lớp
select Malop from LOP

--2. Cho biết danh sách sinh viên lớp TH1.
select * from SINHVIEN where Malop='TH1'

--3. Cho biết danh sách SV khoa CNTT
select * 
from SINHVIEN sv inner join LOP lp on sv.Malop=lp.Malop
where lp.Makh='1'	--1 là Mã khoa CNTT

--4. Cho biết chương trình học của lớp TH1
select * from CTHOC where Malop='TH1'

--5. Điểm lần 1 môn CSDL của SV lớp TH1.
select Hosv,Tensv,Malop,DIEM,lan
from MONHOC mh inner join DIEMSV on mh.Mamh=DIEMSV.Mamh
inner join SINHVIEN on DIEMSV.Masv=SINHVIEN.Masv
where Lan='1' and Malop='TH1'and mh.Mamh='31'

--6. Điểm trung bình lần 1 môn CTDL của lớp TH1.
select round(AVG(diem),1) as 'Điểm TB'
from DIEMSV inner join SINHVIEN on DIEMSV.Masv=SINHVIEN.Masv
where Lan='1' and Mamh='31' and Malop='TH1' and Mamh='31'

--7. Số lượng SV của lớp TH2.
select * from SINHVIEN
select count(*) as 'Số lương SV TH2'
from SINHVIEN
--group by Malop
where Malop = 'TH2'
--having Malop = 'TH2'

--8. Lớp TH1 phải học bao nhiêu môn trong HK1 và HK2.
select count(CTHOC.Mamh) as SOMONHOC from CTHOC where Malop='TH1' and (HK = 1 or HK = 2)

select count(CThoc.Mamh) as 'Số môn trong HK1 và HK2'
from CTHOC
where HK='1' and HK='2' and Malop='TH1'

--9. Cho biết 3 SV đầu tiên có điểm thi lần 1 cao nhất môn CSDL.
select top 3 * from DIEMSV inner join SINHVIEN on DIEMSV.Masv=SINHVIEN.Masv
where Lan='1' and Mamh='31'
order by Diem DESC -- Mac dinh ko viet gi la ASC tang dan, DESC la giam dan

--10. Cho biết sĩ số từng lớp.
select Malop,count(Masv) as 'Sĩ số'
from SINHVIEN
group by Malop

--11. Khoa nào đông SV nhất.
select  KHOA.Makh,count(Masv) as 'Số sinh viên'
from KHOA inner join LOP on KHOA.Makh=lop.Makh
inner join SINHVIEN on lop.Malop=SINHVIEN.Malop
group by Khoa.Makh
having count(Masv) >= all(
select count(Masv)
from KHOA inner join LOP on KHOA.Makh=lop.Makh
inner join SINHVIEN on lop.Malop=SINHVIEN.Malop
group by KHOA.Makh)

--cach 1:
--select tenkhoa
--from dmsv sv,dmkhoa kh
--where sv.makhoa=kh.makhoa
--group by tenkhoa
--having count(tenkhoa)>=all(select count(masv)
--from dmsv
--group by makhoa)

--12. Lớp nào đông nhất khoa CNTT.
select Malop, count(Masv) as 'So luong sv'
from SINHVIEN
group by Malop
having count(Masv) >= all(select count(Masv) 
from SINHVIEN 
group by Malop)

--13. Môn học nào mà ở lần thi 1 có số SV không đạt nhiều nhất.
select MONHOC.Tenmh as 'Môn SV tạch nhiều nhất ở lần 1'
from DIEMSV inner join MONHOC on DIEMSV.Mamh=MONHOC.Mamh
group by MONHOC.Tenmh,Lan,Diem
having Lan='1' and Diem<5 
and count(Masv) >= all(
select count(Masv)
from DIEMSV
group by Mamh,Lan,Diem)

--14. Tìm điểm thi lớn nhất của mỗi SV cho mỗi môn học (vì SV được thi nhiều lần).
select sinhvien.masv,mamh,max(diem)
from diemsv inner join sinhvien on diemsv.masv=sinhvien.masv
group by sinhvien.masv,diemsv.mamh




--15. Điểm trung bình của từng lớp khoa CNTT ở lần thi thứ nhất môn CSDL.
select lop.Malop,avg(diem) as DTB
from lop inner join SINHVIEN sv on lop.Malop=sv.Malop
inner join DIEMSV on DIEMSV.Masv=sv.Masv
inner join MONHOC mh on DIEMSV.Mamh=mh.Mamh
group by lop.Malop,lop.Makh,lan,mh.Mamh
having lop.Makh='1' and lan='1' and mh.Mamh='31' --1 là mã khoa CNTT

select * from DIEMSV


--16. Sinh viên nào của lớp TH1 đã thi đạt tất cả các môn học ở lần 1 của HK2.
select sv.masv,hosv+' ' +tensv as hoten
from SINHVIEN sv join diemsv on sv.Masv=DIEMSV.Masv
join MONHOC mh on DIEMSV.Mamh=mh.Mamh
join CTHOC on mh.Mamh = CTHOC.Mamh
group by sv.masv,hosv+' ' +tensv,sv.Malop,hk,lan,diem
having sv.Malop='TH1'and hk=3 and lan=1 and 
sv.Masv not in (select sv.Masv from SINHVIEN sv join diemsv on sv.Masv=DIEMSV.Masv where diem < 5)
--diem>5	--thay HK2 -> hk3

--17. Danh sách SV nhận học bổng học kỳ 2 của lớp TH2, nghĩa là đạt tất cả các môn học
--của học kỳ này ở lần thi thứ nhất.
select sv.Masv,hosv +' ' +tensv as hoten
from SINHVIEN sv join diemsv on sv.Masv=DIEMSV.Masv
join MONHOC mh on DIEMSV.Mamh=mh.Mamh
join CTHOC on mh.Mamh = CTHOC.Mamh
group by sv.Masv,hosv +' ' +tensv,sv.Malop,hk,diem
having sv.Malop='TH1' and hk=3
and sv.Masv not in (select sv.Masv from SINHVIEN sv join diemsv on sv.Masv=DIEMSV.Masv where diem < 8.5)
--having sv.Malop='TH1' and hk=3 and diem>8.5 --thay th2 -> th1; hk2->hk3

--18. Biết rằng lớp TH1 đã học đủ 6 học kỳ, cho biết SV nào đủ điều kiện thi tốt nghiệp,
--nghĩa là đã đạt đủ tất cả các môn.
select distinct sv.Masv,hosv +' ' +tensv as hoten
from SINHVIEN sv join diemsv on sv.Masv=DIEMSV.Masv
join MONHOC mh on DIEMSV.Mamh=mh.Mamh
join CTHOC on mh.Mamh = CTHOC.Mamh
group by sv.Masv,hosv +' ' +tensv,sv.Malop,hk,diem
having sv.Malop='TH1' and sv.Masv not in (select sv.Masv from SINHVIEN sv join diemsv on sv.Masv=DIEMSV.Masv where diem  < 5)






--54. Cho biết khoa nào có đông sinh viên nhất.
--cach 1:
--select tenkhoa
--from dmsv sv,dmkhoa kh
--where sv.makhoa=kh.makhoa
--group by tenkhoa
--having count(tenkhoa)>=all(select count(masv)
--from dmsv
--group by makhoa)

--cach 2:
--select tenkhoa
--from dmsv sv,dmkhoa kh
--where sv.makhoa=kh.makhoa
--group by tenkhoa
--having count(tenkhoa)= (select max(t.tong)
--from
--(
--select count(masv) as tong
--from dmsv
--group by makhoa
--) as t
--)