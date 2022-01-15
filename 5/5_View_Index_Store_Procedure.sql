-- Bước 1
create database 5_View_Index_Store_Procedure;
use 5_View_Index_Store_Procedure;
create table Products(
id int primary key auto_increment,
productCode varchar(20),
productName varchar(20),
productPrice float,
productAmount int,
productDescription varchar(20),
productStatus varchar(20)
);
-- Bước 2
select* from Products;
insert into Products (productCode,productName,productPrice,productAmount,productDescription,productStatus) values
("code1","DienThoai",1000000,10,"New Box","Good"),
("code2","Laptop",1500000,4,"New Box","Good"),
("code3","MayGiat",2000000,6,"New Box","Good"),
("code4","Tivi",4000000,8,"New Box","Good"),
("code5","TuLanh",3000000,3,"New Box","Good");

-- Bước 3
alter table Products add index idx_productCode(productCode);
explain select * from Products where productCode = "code";
alter table Products add index idx_productNameandPrice(productName,productPrice);
explain select * from Products where productName = "Tivi" or productPrice = 4000000;

-- Bước 4
create view Pro as select productCode,productName,productPrice,productStatus from Products;
select * from Pro;
update Pro set productStatus = "Not Good" where productCode = "code2";

-- Bước 5
DELIMITER //
create procedure findAllProducts()
begin
select * from Products;
end //
DELIMITER ;
call findAllProducts();

delimiter //
create procedure insert_products
(
    IN productCode varchar(20),
    IN productName varchar(50),
    IN productPrice int,
    IN productAmount int,
    IN productDescription varchar(50),
    IN productStatus varchar(10)
) 
begin
	insert into products(productCode, productName, productPrice, productAmount, productDescription, productStatus)
    values(productCode, productName, productPrice, productAmount, productDescription, productStatus);
end //
delimiter ;
call insert_products ("code6","MayTinh",2000000,5,"New Box","Good");
select * from Products;

delimiter //
create procedure replace_product_by_id
(
	IN product_ID int,
	IN `code` varchar(20),
    IN `name` varchar(50),
    IN price int,
    IN amount int,
    IN `description` varchar(50),
    IN `status` varchar(10)
)
begin
	update products
    set productCode = `code`,
		productName = `name`,
        productPrice = price,
        productAmount = amount,
        productDescription = `description`,
        productStatus = `status`
	where id = product_ID;
end //
delimiter ;
call replace_product_by_id (1,"code1","MayAnh",500000,5,"New Box","Good");
select * from Products;

delimiter //
create procedure delete_product_by_id
(
	IN product_ID int
)
begin
	delete from products
    where id = product_ID;
end //
delimiter ;
call delete_product_by_id (6);
select * from Products;