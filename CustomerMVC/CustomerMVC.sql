create database CustomerMVC;
use CustomerMVC;
create table Customer(
id int primary key auto_increment,
`name_customer` varchar(45),
gender boolean,
birthday date,
`address_customer` varchar(45),
`phone_customer` varchar(45)
);
select * from Customer;
insert into Customer(`name_customer`,gender,birthday,`address_customer`,`phone_customer`) 
values("Nguyên",true,"1992-11-27","Đà Nẵng","0702770099");