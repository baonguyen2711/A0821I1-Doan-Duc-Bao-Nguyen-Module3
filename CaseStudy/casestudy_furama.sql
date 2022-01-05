create database casestudy;
use casestudy;
create table vi_tri(
id_vi_tri int primary key auto_increment,
`name_vi_tri` varchar(20) 
);
create table trinh_do(
id_trinh_do int primary key auto_increment,
`name_trinh_do` varchar(20)
);
create table bo_phan(
id_bo_phan int primary key auto_increment,
`name_bo_phan` varchar(20)
);
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
create table loai_khach(
id_loai_khach int primary key auto_increment,
`name_loai_khach` varchar(20)
);
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
create table kieu_thue(
id_kieu_thue int primary key auto_increment,
`name_kieu_thue` varchar(10)
);
create table loai_dich_vu(
id_loai_dich_vu int primary key auto_increment,
`name_loai_dich_vu` varchar(10)
);
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
create table dich_vu_di_kem(
id_dich_vu_di_kem int primary key auto_increment,
`name_dich_vu_di_kem` varchar(20),
gia double,
don_vi varchar(20),
trang_thai varchar(50)
);
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
create table hop_dong_chi_tiet(
id_hop_dong_chi_tiet int primary key auto_increment,
so_luong int,
id_hop_dong int,
id_dich_vu_di_kem int,
foreign key(id_hop_dong) references hop_dong(id_hop_dong),
foreign key(id_dich_vu_di_kem) references dich_vu_di_kem(id_dich_vu_di_kem)
);