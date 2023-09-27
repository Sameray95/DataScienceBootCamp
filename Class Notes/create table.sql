


create table bds35_tab_nn(

id int not null,

fname varchar(255) not null,

lname varchar(255) not null);

 

create table bds35_tab_unq(

id int not null,

fname varchar(255) not null,

lname varchar(255) not null,

unique (id));

 

create table bds35_tab_prim(

id int not null,

fname varchar(255) not null,

lname varchar(255) not null,

primary key (id));



create table bds35_tab_fore(
order_id int not null,
order_number int not null,
ID int,
primary key (order_id),
constraint FK_PersonOrder foreign key(ID)
references bds35_tab_prim(ID)

);