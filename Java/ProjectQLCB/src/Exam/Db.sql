create database QLCB;

use QLCB;

create table tbCanbo (
	SoTK int not null,
    Hoten char(20) not null,
    GT char(10) not null,
    Diachi char(20) not null,
    Luong int not null
);
select * from tbcanbo;
drop table tbCanbo;


insert into tbcanbo values(12, "Vũ Minh Quân","Nam", "Hà Nội", 10000); 
insert into tbcanbo values(23, "Nguyễn Thị Thanh","Nữ", "Hà Nội", 12000); 
insert into tbcanbo values(34, "Nguyễn Hoàng Lâm","Nữ", "Hà Nội", 14000); 