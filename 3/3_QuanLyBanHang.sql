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
select * from customer;
insert into customer(`cName`,cAge) values ("Minh Quan",10),("Ngoc Oanh",20),("Hong Ha",50);
select * from product;
insert into product(`pName`,pPrice) values("May Giat",3),("Tu Lanh",5),("Dieu Hoa",7)
										,("Quat",1),("Bep Dien",2);
select * from orderr;
insert into orderr(cID,oDate,oTotalPrice) values (1,"2006-03-21",null),(2,"2006-03-23",null),(1,"2006-03-16",null);
select * from orderdetail;
insert into orderdetail(oID,pID,odQYT) values (1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select * from orderr;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select c.`cName`,o.cID,o.oDate
from customer c join orderr o on c.cID = o.cID;
select c.`cName`,c.cID,o.oDate,o.oID,p.pID,p.`pName`
from customer c left join orderr o on c.cID = o.cID left join  orderdetail od on o.oID = od.oID 
left join product p on od.pID = p.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select c.cID,c.`cName`,o.oID
from customer c left join orderr o on c.cID = o.cID;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được 
-- tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
select od.oID,od.pID,od.odQYT,p.`pName`,p.pPrice,(odQYT*pPrice) as 'TotalPrice'
from orderr o join orderdetail od on o.oID = od.oID join product p on p.pID = od.pID;