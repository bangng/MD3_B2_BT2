create database quanlybanhang;
create table customer(
cid int not null auto_increment primary key,
cname varchar(30) not null,
cage int not null
);
create table oder (
oid int not null auto_increment primary key,
odate datetime not null,
ototalprice float,
ocid int not null,
foreign key (ocid) references customer (cid)
);
create table product(
pid int not null auto_increment primary key,
pname varchar(50) not null,
pprice float not null
);
create table orderdetail(
ooid int not null,
opid int not null,
foreign key (ooid) references oder (oid),
foreign key (opid) references product (pid),
odqty int,
  primary key (ooid, opid)
);
