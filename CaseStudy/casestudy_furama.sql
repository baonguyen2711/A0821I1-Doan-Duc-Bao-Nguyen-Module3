create database casestudy;
use casestudy;
create table vi_tri(
id_vi_tri int primary key auto_increment,
`name_vi_tri` varchar(20) 
);
select * from vi_tri;
insert into vi_tri (`name_vi_tri`) values ("Quản Lý"),("Nhân Viên");
create table trinh_do(
id_trinh_do int primary key auto_increment,
`name_trinh_do` varchar(20)
);
select * from trinh_do;
insert into trinh_do (`name_trinh_do`) values ("Trung Cấp"),("Cao Đẳng"),("Đại Học"),("Sau Đại Học");
create table bo_phan(
id_bo_phan int primary key auto_increment,
`name_bo_phan` varchar(20)
);
select * from bo_phan;
insert into bo_phan (`name_bo_phan`) values ("Sale-Marketing"),("Hành chính"),("Phục vụ"),("Quản lý");
create table nhan_vien(
id_nhan_vien int primary key auto_increment,
`name_nhan_vien` varchar(50),
ngay_sinh_nhan_vien date,
so_cmnd int,
luong double,
so_dien_thoai_nhan_vien int,
email_nhan_vien varchar(50),
dia_chi_nhan_vien varchar(50),
id_vi_tri int,
id_trinh_do int,
id_bo_phan int,
foreign key (id_vi_tri) references vi_tri(id_vi_tri),
foreign key (id_trinh_do) references trinh_do(id_trinh_do),
foreign key (id_bo_phan) references bo_phan(id_bo_phan)
);
select * from nhan_vien;
insert into nhan_vien (`name_nhan_vien`,ngay_sinh_nhan_vien,so_cmnd,luong,so_dien_thoai_nhan_vien,email_nhan_vien,dia_chi_nhan_vien,
						id_vi_tri,id_trinh_do,id_bo_phan)
values  ("Nguyễn Văn An","1970-11-07",456231786,10000000,0901234121,"annguyen@gmail.com","295 Nguyễn Tất Thành, Đà Nẵng",1,3,1),
		("Lê Văn Bình","1997-04-09",654231234,7000000,0934212314,"binhlv@gmail.com","22 Yên Bái, Đà Nẵng",1,2,2),
		("Hồ Thị Yến","1995-12-12",999231723,14000000,0412352315,"thiyen@gmail.com","K234/11 Điện Biên Phủ, Gia Lai",1,3,2),
		("Võ Công Toản","1980-04-04",123231365,17000000,0374443232,"toan0404@gmail.com","77 Hoàng Diệu, Quảng Trị",1,4,4),
		("Nguyễn Bỉnh Phát","1999-12-09",454363232,6000000,0902341231,"phatphat@gmail.com","43 Yên Bái, Đà Nẵng",2,1,1),
		("Khúc Nguyễn An Nghi","2000-11-08",964542311,7000000,0978653213,"annghi20@gmail.com","294 Nguyễn Tất Thành, Đà Nẵng",2,2,3),
		("Nguyễn Hữu Hà","1993-01-01",534323231,8000000,0941234553,"nhh0101@gmail.com","4 Nguyễn Chí Thanh, Huế",2,3,2),
		("Nguyễn Hà Đông","1989-09-03",234414123,9000000,0642123111,"donghanguyen@gmail.com","111 Hùng Vương, Hà Nội",2,4,4),
		("Tòng Hoang","1982-09-03",256781231,6000000,0245144444,"hoangtong@gmail.com","213 Hàm Nghi, Đà Nẵng",2,4,4),
		("Nguyễn Công Đạo","1994-01-08",755434343,8000000,0988767111,"nguyencongdao12@gmail.com","6 Hoà Khánh, Đồng Nai",2,3,2);
create table loai_khach(
id_loai_khach int primary key auto_increment,
`name_loai_khach` varchar(20)
);
select * from loai_khach;
insert into loai_khach (`name_loai_khach`) values ("Diamond"),("Platinium"),("Gold"),("Silver"),("Member");
create table khach_hang(
id_khach_hang int primary key auto_increment,
`name_khach_hang` varchar(50),
ngay_sinh_khach_hang date,
gioi_tinh boolean,
so_cmnd_khach_hang int,
so_dien_thoai_khach_hang int,
email_khach_hang varchar(50),
dia_chi_khach_hang varchar(50),
id_loai_khach int,
foreign key(id_loai_khach) references loai_khach(id_loai_khach)
);
select * from khach_hang;
insert into khach_hang (`name_khach_hang`,ngay_sinh_khach_hang,gioi_tinh,so_cmnd_khach_hang,so_dien_thoai_khach_hang,email_khach_hang,
						dia_chi_khach_hang,id_loai_khach)
values ("Nguyễn Thị Hào","1970-11-07",0,643431213,0945423362,"thihao07@gmail.com","23 Nguyễn Hoàng, Đà Nẵng",5),
		("Phạm Xuân Diệu","1992-08-08",1,865342123,0954333333,"xuandieu92@gmail.com","K77/22 Thái Phiên, Quảng Trị",3),
		("Trương Đình Nghệ","1990-02-27",1,488645199,0373213122,"nghenhan2702@gmail.com","K323/12 Ông Ích Khiêm, Vinh",1),
		("Dương Văn Quan","1981-07-08",1,543432111,0490039241,"duongquan@gmail.com","K453/12 Lê Lợi, Đà Nẵng",1),
		("Hoàng Trần Nhi Nhi","1995-12-09",0,795453345,0312345678,"nhinhi123@gmail.com","224 Lý Thái Tổ, Gia Lai",4),
		("Tôn Nữ Mộc Châu","2005-12-06",0,732434215,0988888844,"tonnuchau@gmail.com","37 Yên Thế, Đà Nẵng",4),
		("Nguyễn Mỹ Kim","1984-04-08",0,856453123,0912345698,"kimcuong84@gmail.com","K123/45 Lê Lợi, Hồ Chí Minh",1),
		("Nguyễn Thị Hào","1999-04-08",0,965656433,0763212345,"haohao99@gmail.com","55 Nguyễn Văn Linh, Kon Tum",3),
		("Trần Đại Danh","1994-07-01",1,432341235,0643343433,"danhhai99@gmail.com","24 Lý Thường Kiệt, Quảng Ngãi",1),
		("Nguyễn Tâm Đắc","1989-07-01",1,344343432,0987654321,"dactam@gmail.com","22 Ngô Quyền, Đà Nẵng",2);
create table kieu_thue(
id_kieu_thue int primary key auto_increment,
`name_kieu_thue` varchar(10)
);
select * from kieu_thue;
insert into kieu_thue (`name_kieu_thue`) values ("Year"),("Month"),("Day"),("Hour");
create table loai_dich_vu(
id_loai_dich_vu int primary key auto_increment,
`name_loai_dich_vu` varchar(10)
);
select * from loai_dich_vu;
insert into loai_dich_vu (`name_loai_dich_vu`) values ("Villa"),("House"),("Room");
create table dich_vu(
id_dich_vu int primary key auto_increment,
`name_dich_vu` varchar(20),
dien_tich int,
chi_phi_thue double,
so_nguoi_toi_da int,
tieu_chuan_phong varchar(20),
tien_nghi_khac varchar(50),
dien_tich_ho_boi double,
so_tang int,
id_kieu_thue int,
id_loai_dich_vu int,
foreign key(id_kieu_thue) references kieu_thue(id_kieu_thue),
foreign key(id_loai_dich_vu) references loai_dich_vu(id_loai_dich_vu)
);
select * from dich_vu;
insert into dich_vu (`name_dich_vu`,dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,tien_nghi_khac,dien_tich_ho_boi,so_tang,
					id_kieu_thue,id_loai_dich_vu) values
("Villa Beach Front",25000,10000000,10,"Vip","Có hồ bơi",500,4,3,1),
("House Princess 01",14000,5000000,7,"Vip","Có thêm bếp nướng",null,3,2,2),
("Room Twin 01",5000,1000000,2,"Normal","Có tivi",null,null,4,3),
("Villa No Beach Front",22000,9000000,8,"Normal","Có hồ bơi",300,3,3,1),
("House Princess 02",10000,4000000,5,"Normal","Có thêm bép nướng",null,2,3,2),
("Room Twin 02",3000,900000,2,"Normal","Có tivi",null,null,4,3);
create table dich_vu_di_kem(
id_dich_vu_di_kem int primary key auto_increment,
`name_dich_vu_di_kem` varchar(20),
gia double,
don_vi varchar(20),
trang_thai varchar(50)
);
select * from dich_vu_di_kem;
insert into dich_vu_di_kem (`name_dich_vu_di_kem`,gia,don_vi,trang_thai) values
							("Karaoke",10000,"Giờ","Tiện nghi, hiện tại"),
							("Thuê xe máy",10000,"Chiếc","Hỏng 1 xe"),
							("Thuê xe đạp",20000,"Chiếc","Tốt"),
							("Buffet buổi sáng",15000,"Suất","Đầy đủ đồ ăn, tráng miệng"),
							("Buffet buổi trưa",20000,"Suất","Đầy đủ đồ ăn, tráng miệng"),
							("Buffet buổi tối",30000,"Suất","Đầy đủ đồ ăn, tráng miệng");
create table hop_dong(
id_hop_dong int primary key auto_increment,
ngay_lam_hop_dong datetime,
ngay_ket_thuc datetime,
tien_dat_coc double,
id_nhan_vien int,
id_khach_hang int,
id_dich_vu int,
foreign key(id_nhan_vien) references nhan_vien(id_nhan_vien),
foreign key(id_khach_hang) references khach_hang(id_khach_hang),
foreign key(id_dich_vu) references dich_vu(id_dich_vu)
);
select * from hop_dong;
insert into hop_dong (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,id_nhan_vien,id_khach_hang,id_dich_vu) values
					("2020-12-08","2020-12-08",0,3,1,3),
					("2020-07-14","2020-07-21",200000,7,3,1),
					("2021-03-15","2021-03-17",50000,3,4,2),
					("2021-01-14","2021-01-18",100000,7,5,5),
					("2021-07-14","2021-07-15",0,7,2,6),
					("2021-06-01","2021-06-03",0,7,7,6),
					("2021-09-02","2021-09-05",100000,7,4,4),
					("2021-06-17","2021-06-18",150000,3,4,1),
					("2020-11-19","2020-11-19",0,3,4,3),
					("2021-04-12","2021-04-14",0,10,3,5),
					("2021-04-25","2021-04-25",0,2,2,1),
					("2021-05-25","2021-05-27",0,7,10,1);
create table hop_dong_chi_tiet(
id_hop_dong_chi_tiet int primary key auto_increment,
so_luong int,
id_hop_dong int,
id_dich_vu_di_kem int,
foreign key(id_hop_dong) references hop_dong(id_hop_dong),
foreign key(id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem)
);
select * from hop_dong_chi_tiet;
insert into hop_dong_chi_tiet (so_luong,id_hop_dong,id_dich_vu_di_kem)
values (5,2,4),(8,2,5),(15,2,6),(1,3,1),(11,3,2),(1,1,3),(2,1,2),(2,12,2);

-- Hiển thi các bảng
select * from vi_tri;
select * from trinh_do;
select * from bo_phan;
select * from nhan_vien;
select * from loai_khach;
select * from khach_hang;
select * from kieu_thue;
select * from loai_dich_vu;
select * from dich_vu;
select * from dich_vu_di_kem;
select * from hop_dong;
select * from hop_dong_chi_tiet;

-- 2.Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu
	 -- là một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select * from nhan_vien where `name_nhan_vien` regexp '^[HTK]+' and char_length(`name_nhan_vien`) <=15;

-- 3.Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select * , round(datediff(curdate(),ngay_sinh_khach_hang) / 365) as 'Age_khach_hang' from khach_hang  
where (round(datediff(curdate(),ngay_sinh_khach_hang) / 365) between 18 and 50)
and (dia_chi_khach_hang like binary "%Đà Nẵng" or dia_chi_khach_hang like binary "%Quảng Trị");

-- 4.Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. 
--   Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
--   Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.
select kh.*, count(kh.id_khach_hang) as so_lan_dat_phong from khach_hang kh 
join hop_dong hd on kh.id_khach_hang = hd.id_khach_hang join loai_khach lkh on kh.id_loai_khach = lkh.id_loai_khach
where `name_loai_khach` = "Diamond"
group by kh.id_khach_hang
order by so_lan_dat_phong;

-- 5.Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien
--   (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
select kh.id_khach_hang,kh.`name_khach_hang`,lkh.`name_loai_khach`,hd.id_hop_dong,dv.`name_dich_vu`
,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc ,dv.chi_phi_thue ,hdct.so_luong ,dvdk.gia,
ifnull(sum((hdct.so_luong * dvdk.gia) + dv.chi_phi_thue),dv.chi_phi_thue) as Total
from khach_hang kh left join loai_khach lkh on kh.id_loai_khach = lkh.id_loai_khach
left join hop_dong hd on kh.id_khach_hang = hd.id_khach_hang
left join dich_vu dv on hd.id_dich_vu = dv.id_dich_vu
left join hop_dong_chi_tiet hdct on hdct.id_hop_dong = hd.id_hop_dong
left join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
group by kh.id_khach_hang;

-- 6.Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, ten_loai_dich_vu 
--   của tất cả các loại dịch vụ chưa từng được khách hàng thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).
select dv.id_dich_vu,dv.`name_dich_vu`,dv.dien_tich,dv.chi_phi_thue,ldv.`name_loai_dich_vu`
from dich_vu dv join loai_dich_vu ldv on ldv.id_loai_dich_vu = dv.id_loai_dich_vu 
join hop_dong hd on hd.id_dich_vu = dv.id_dich_vu
where ldv.id_loai_dich_vu not in (select ldv.id_loai_dich_vu from loai_dich_vu ldv 
	join dich_vu dv on ldv.id_loai_dich_vu = dv.id_loai_dich_vu
	join hop_dong hd on hd.id_dich_vu = dv.id_dich_vu
    where month(hd.ngay_lam_hop_dong) in (1,2,3) and year(hd.ngay_lam_hop_dong)=2021
)
group by dv.id_dich_vu;

-- 7.Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich, so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các
--   loại dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng chưa từng được khách hàng đặt phòng trong năm 2021.
select dv.id_dich_vu,dv.`name_dich_vu`,dv.dien_tich,dv.so_nguoi_toi_da,dv.chi_phi_thue,ldv.`name_loai_dich_vu`
from dich_vu dv join loai_dich_vu ldv on ldv.id_loai_dich_vu = dv.id_loai_dich_vu
join hop_dong hd on hd.id_dich_vu = dv.id_dich_vu
where year(hd.ngay_lam_hop_dong) = 2020 and dv.id_loai_dich_vu not in 
(select dv.id_dich_vu from dich_vu dv
join hop_dong hd on hd.id_dich_vu = dv.id_dich_vu where year(hd.ngay_lam_hop_dong) = 2021)
group by dv.id_dich_vu;

-- 8.Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
select distinct `name_khach_hang` from khach_hang;
select `name_khach_hang` from khach_hang
group by `name_khach_hang`;
select `name_khach_hang` from khach_hang
union select `name_khach_hang` from khach_hang;

-- 9.Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong năm 2021
--   thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
select month(ngay_lam_hop_dong) as Thang, count(ngay_lam_hop_dong) as So_lan_dat_phong from hop_dong
where year(ngay_lam_hop_dong) = 2021
group by month(ngay_lam_hop_dong)
order by month(ngay_lam_hop_dong);

-- 10.Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm.
--    Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, so_luong_dich_vu_di_kem
select hd.id_hop_dong,hd.ngay_lam_hop_dong,hd.ngay_ket_thuc,hd.tien_dat_coc,ifnull(sum(hdct.so_luong),0) as So_luong
from hop_dong hd left join hop_dong_chi_tiet hdct on hdct.id_hop_dong = hd.id_hop_dong
group by hd.id_hop_dong
order by hd.id_hop_dong;

-- 11.Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” 
--    và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select dvdk.id_dich_vu_di_kem,dvdk.`name_dich_vu_di_kem` from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.id_dich_vu_di_kem = dvdk.id_dich_vu_di_kem
join hop_dong hd on hd.id_hop_dong = hdct.id_hop_dong
join khach_hang kh on kh.id_khach_hang = hd.id_khach_hang
join loai_khach lk on lk.id_loai_khach = kh.id_loai_khach
where lk.`name_loai_khach` = "Diamond" and (dia_chi_khach_hang like binary "%Vinh" or dia_chi_khach_hang like binary "%Quảng Ngãi");

-- 12.Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu,
--    so_luong_dich_vu_di_kem,tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020
--    nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.
select hd.id_hop_dong,nv.`name_nhan_vien`,kh.`name_khach_hang`,kh.so_dien_thoai_khach_hang,dv.id_dich_vu,dv.`name_dich_vu`,
ifnull(sum(hdct.so_luong),0) as So_luong,hd.tien_dat_coc
from hop_dong hd join nhan_vien nv on nv.id_nhan_vien = hd.id_nhan_vien
join khach_hang kh on kh.id_khach_hang = hd.id_khach_hang
join dich_vu dv on dv.id_dich_vu = hd.id_dich_vu
left join hop_dong_chi_tiet hdct on hdct.id_hop_dong = hd.id_hop_dong
where (hd.ngay_lam_hop_dong between '2020-10-01' AND '2020-12-30')
and (hd.ngay_lam_hop_dong not between '2021-01-01'AND '2021-06-30')
group by hd.id_hop_dong;

-- 13.Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng
--    (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
select  dvdk.id_dich_vu_di_kem,dvdk.`name_dich_vu_di_kem`,hdct.so_luong,sum(hdct.so_luong) as So_lan
from dich_vu_di_kem dvdk join hop_dong_chi_tiet hdct on hdct.id_dich_vu_di_kem = dvdk.id_dich_vu_di_kem
group by dvdk.id_dich_vu_di_kem
order by sum(hdct.so_luong) desc
limit 2;

-- 14.Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
--    Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung
--    (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).
select hd.id_hop_dong,ldv.`name_loai_dich_vu`,dvdk.`name_dich_vu_di_kem`,count(hdct.id_dich_vu_di_kem) as so_lan_su_dung
from hop_dong hd join dich_vu dv on dv.id_dich_vu = hd.id_dich_vu
join loai_dich_vu ldv on ldv.id_loai_dich_vu = dv.id_loai_dich_vu
join hop_dong_chi_tiet hdct on hdct.id_hop_dong = hd.id_hop_dong
join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
group by hdct.id_dich_vu_di_kem
having count(hdct.id_dich_vu_di_kem) = 1
order by hd.id_hop_dong;

-- 15.Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi
--    mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
select nv.id_nhan_vien,nv.`name_nhan_vien`,td.`name_trinh_do`,bp.`name_bo_phan`,
nv.so_dien_thoai_nhan_vien,nv.dia_chi_nhan_vien,count(hd.id_nhan_vien) as so_lan
from nhan_vien nv join hop_dong hd on hd.id_nhan_vien = nv.id_nhan_vien
join trinh_do td on td.id_trinh_do = nv.id_trinh_do
join bo_phan bp on bp.id_bo_phan = nv.id_bo_phan
where year(hd.ngay_lam_hop_dong) between '2020' and '2021'
group by hd.id_nhan_vien
having count(hd.id_nhan_vien) < 3
order by nv.id_nhan_vien;

-- 16.Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
select nv.id_nhan_vien,nv.`name_nhan_vien` from nhan_vien nv
left join hop_dong hd on hd.id_nhan_vien = nv.id_nhan_vien
where nv.id_nhan_vien not in (select hd.id_nhan_vien from hop_dong hd where year(ngay_lam_hop_dong) between '2019' and '2021');

-- 17.Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng
--    với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
select 
kh.id_khach_hang,kh.`name_khach_hang`,lkh.id_loai_khach,lkh.`name_loai_khach`,sum((hdct.so_luong * dvdk.gia) + dv.chi_phi_thue) as Total
from khach_hang kh join loai_khach lkh on lkh.id_loai_khach = kh.id_loai_khach
join hop_dong hd on hd.id_khach_hang = kh.id_khach_hang 
join dich_vu dv on dv.id_dich_vu = hd.id_dich_vu
join hop_dong_chi_tiet hdct on hdct.id_hop_dong = hd.id_hop_dong
join dich_vu_di_kem dvdk on dvdk.id_dich_vu_di_kem = hdct.id_dich_vu_di_kem
where kh.id_loai_khach = 2 and year(hd.ngay_lam_hop_dong) = 2021
group by kh.id_khach_hang
having Total > 100;

-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
select kh.id_khach_hang,kh.`name_khach_hang` from khach_hang kh join hop_dong hd on hd.id_khach_hang = kh.id_khach_hang
where year(ngay_lam_hop_dong) < 2021
group by kh.id_khach_hang
order by kh.id_khach_hang;

-- 19.Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
select dvdk.id_dich_vu_di_kem,dvdk.`name_dich_vu_di_kem`,hdct.so_luong from dich_vu_di_kem dvdk
join hop_dong_chi_tiet hdct on hdct.id_dich_vu_di_kem = dvdk.id_dich_vu_di_kem
join hop_dong hd on hd.id_hop_dong = hdct.id_hop_dong
where year(ngay_lam_hop_dong) = 2020
group by hdct.id_dich_vu_di_kem
having hdct.so_luong > 10;

-- 20.Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, thông tin hiển thị bao gồm
--    id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
select `name_nhan_vien`, ngay_sinh_nhan_vien,`email_nhan_vien`,so_dien_thoai_nhan_vien,`dia_chi_nhan_vien`,
'Nhan_vien' as Phan_loai from nhan_vien
union
select `name_khach_hang`,ngay_sinh_khach_hang,`email_khach_hang`,so_dien_thoai_khach_hang,`dia_chi_khach_hang`,
'Khach_hang' as Phan_loai from khach_hang;

-- 21.Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “Đà Nẵng” 
--    và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “2021”
create view v_nhan_vien as select nv.id_nhan_vien,nv.`name_nhan_vien`,nv.dia_chi_nhan_vien from nhan_vien nv 
join hop_dong hd on hd.id_nhan_vien = nv.id_nhan_vien
where nv.dia_chi_nhan_vien like "%Đà Nẵng" and year(ngay_lam_hop_dong) = '2021'
group by nv.id_nhan_vien
having count(hd.id_nhan_vien) >= 1;
select * from v_nhan_vien;

-- 22.Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” đối với tất cả các nhân viên được
--    nhìn thấy bởi khung nhìn này.
UPDATE v_nhan_vien v set v.dia_chi_nhan_vien = '44 Yên Bái, Đà Nẵng';

-- 23.Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó với ma_khach_hang được truyền vào
--    như là 1 tham số của sp_xoa_khach_hang.
DELIMITER // 
create procedure sp_xoa_khach_hang ( IN sp_id_khach_hang int)
begin
delete from khach_hang where id_khach_hang = sp_id_khach_hang;
end // 
DELIMITER ;
select * from khach_hang;
SET FOREIGN_KEY_CHECKS=0;
call sp_xoa_khach_hang (1);
SET FOREIGN_KEY_CHECKS=1;

-- 24.Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với yêu cầu sp_them_moi_hop_dong phải 
--    thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung, với nguyên tắc không được trùng khóa chính và đảm bảo toàn vẹn 
--    tham chiếu đến các bảng liên quan.
DELIMITER //
create procedure sp_them_moi_hop_dong (
in id_hop_dong int,
in ngay_lam_hop_dong datetime,
in ngay_ket_thuc datetime,
in tien_dat_coc double,
in id_nhan_vien int,
in id_khach_hang int,
in id_dich_vu int
)
begin
insert into hop_dong (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,id_nhan_vien,id_khach_hang,id_dich_vu)
values (ngay_lam_hop_dong,ngay_ket_thuc,tien_dat_coc,id_nhan_vien,id_khach_hang,id_dich_vu);
end //
DELIMITER ;
select * from hop_dong;
call sp_them_moi_hop_dong(null,"2022-12-01","2022-12-01",0,3,1,3);

