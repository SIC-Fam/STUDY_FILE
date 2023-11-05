CREATE TABLE users (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(20),
    address VARCHAR(20),
    DoB DATE,
    PRIMARY KEY (id)
);
drop table users;
SELECT 
    *
FROM
    users;
insert into users values (1, "Vu Minh Quan", "Ha Noi", "2003-02-18");