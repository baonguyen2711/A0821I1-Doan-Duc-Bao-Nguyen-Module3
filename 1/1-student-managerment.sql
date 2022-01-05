create database 1_student_managerment;
use 1_student_managerment;
create table student (
id int,
`name` varchar(50),
age int,
`country` varchar(50)
);
create table teacher (
id int,
`name` varchar(50),
age int,
`country` varchar(50)
);
create table class(
id int,
`name` varchar(50)
);
select * from student;
insert into student (id,`name`,age,`country`)
 values (4,"Nam",20,"Đà Nẵng"),
		(2,"Diệu",32,"Đà Nẵng");
update student set age=21 where `name`="Tuân";
delete from student where id = 4;
select * from teacher;
insert into teacher (id,`name`,age,`country`) values (1,"Hà",40,"Đà Nẵng");
drop table student;
drop table teacher;
