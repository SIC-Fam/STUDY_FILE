create database DLLuong;
use DLLuong;

create table tbNhanvien (
	MaNV int not null,
    Hoten char(20) not null,
    Diachi char(20) not null,
    Luong int not null
);
drop table tbNhanvien;
select * from tbNhanvien;

insert into tbNhanvien values(1, "Vũ Minh Quân", "Hà Nội", 10000); 
insert into tbNhanvien values(2, "Nguyễn Thị Thanh", "Hà Nội", 12000); 
insert into tbNhanvien values(3, "Nguyễn Hoàng Lâm", "Hà Nội", 14000); 