create database 2_baitap_quanlybanhang;
use 2_baitap_quanlybanhang;
create table Customer(
cID int primary key auto_increment,
`cName` varchar(50),
cAge int
);
create table Product(
pID int primary key auto_increment,
`pName` varchar(25),
pPrice int
);
create table Orderr(
oID int primary key auto_increment,
cID int,
oDate date,
oTotalPrice int,
foreign key(cID) references Customer(cID)
);
create table OrderDetail(
oID int,
pID int,
odQYT int,
primary key(oID,pID),
foreign key(oID) references Orderr(oID),
foreign key(pID) references Product(pID)
);