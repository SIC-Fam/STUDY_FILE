
CREATE TABLE tbCanbo (
    SoTK INT NOT NULL,
    Hoten CHAR(20) NOT NULL,
    GT CHAR(10) NOT NULL,
    Diachi CHAR(20) NOT NULL,
    Luong INT NOT NULL
);


SELECT 
    *
FROM
    tbCanbo;
    drop table tbcanbo;
    
    
insert into tbcanbo values (1234, 'Vu Minh Quan', 'Nam', 'Ha Noi', 10000);
insert into tbcanbo values (1235, 'Nguyen Thi Thanh', 'Nu', 'Ha Noi', 10000);
insert into tbcanbo values (1236, 'Nguyen Hoang Lam', 'Nam', 'Ha Noi', 10000);