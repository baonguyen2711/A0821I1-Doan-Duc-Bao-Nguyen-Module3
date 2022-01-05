create database 2_baitap_chuyendoi_erd_sangmohinhquanhe;
use 2_baitap_chuyendoi_erd_sangmohinhquanhe;
create table PhieuXuat(
SoPX int primary key auto_increment,
NgayXuat date
);
create table ChiTietPX(
DGXuat int,
SLXuat int,
SoPX int,
NgayXuat date,
MaVTu int,
`TenVTu` varchar(50),
primary key(SoPX,MaVTu),
foreign key(SoPX) references PhieuXuat(SoPX),
foreign key(MaVTu) references VatTu(MaVTu)
);
create table VatTu(
MaVTu int primary key auto_increment,
`TenVTu` varchar(50)
);
create table ChiTietPN(
DGNhap int,
SLNhap int,
MaVTu int,
`TenVTu` varchar(50),
SoPN int,
NgayNhap date,
primary key(SoPN,MaVTu),
foreign key(SoPN) references PhieuNhap(SoPN),
foreign key(MaVTu) references VatTu(MaVTu)
);
create table PhieuNhap(
SoPN int primary key auto_increment,
NgayNhap date
);
create table ChiTIetDH(
MaVTu int,
`TenVTu` varchar(50),
SoDH int,
NgayDH date,
primary key(MaVTu,SoDH),
foreign key(SoDH) references DonDatHang(SoDH),
foreign key(MaVTu) references VatTu(MaVTu)
);
create table DonDatHang(
SoDH int primary key auto_increment,
NgayDH date
);
create table CungCap(
SoDH int,
MaNCC int,
NgayDH date,
primary key(SoDH,MaNCC),
foreign key(SoDH) references DonDatHang(SoDH),
foreign key(MaNCC) references CungCap(MaNCC)
);
create table NhaCungCap(
MaNCC int primary key auto_increment,
`TenNCC` varchar(50),
`DiaChi` varchar(50),
SDT int
);
create table SDT_NhaCungCap(
MaNCC int primary key auto_increment,
SDT_NhaCungCap int
);
