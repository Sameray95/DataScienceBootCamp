
create database datascience;
use datascience;
create table bds35_table1 (
student_id int,
stud_fname varchar(255),
stud_mname varchar(255),
stud_lname varchar(255),
stud_age int);

 

insert into bds35_table1 (student_id, stud_fname, stud_mname, stud_lname, stud_age) values (17, 'Anurag','Arun','Edlabadkar',46);

 

select * from bds35_table1;

 

insert into bds35_table1 values (19, 'Ananya','Pradhan','Mishra',16);
insert into bds35_table1 values (20, 'Ananya','bk','Mishra',16);
insert into bds35_table1 values (21, 'Ananya','Pradhan','Mishra',16);
insert into bds35_table1 values (22, 'Ananya','Pradhan','Mishra',16);
insert into bds35_table1 values (23, 'Ananya','Pradhan','Mishra',16);


 

select * from bds35_table1;

 

/*
NOT NULL - Ensures that a column cannot have a NULL value
UNIQUE - Ensures that all values in a column are different
PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
FOREIGN KEY - Prevents actions that would destroy links between tables
CHECK - Ensures that the values in a column satisfies a specific condition
DEFAULT - Sets a default value for a column if no value is specified
CREATE INDEX - Used to create and retrieve data from the database very quickly

 

 

--Table A - student_id Primary
--Table B - student_year_enroll Primary student_id Secondary/Foreign
--Table C - student_sub_enroll Primary student_id, student_year_enroll Secondary/Foreign
*/

 

create table bds35_tab_nn(
id int not null,
fname varchar(255) not null,
lname varchar(255) not null);

 

insert into bds35_tab_nn values (1191, 'Pritam', 'Shah');
insert into bds35_tab_nn values (1192, 'Ramana', 'Verma');
insert into bds35_tab_nn values (1193, 'ratan', 'ok');
insert into bds35_tab_nn values (1194, 'hari', 'bk');
insert into bds35_tab_nn values (1195, 'shyam', 'kc');

 

 

create table bds35_tab_unq(
id int not null,
fname varchar(255) not null,
lname varchar(255) not null,
unique (id));

 insert into bds35_tab_unq values (123, 'Viju', 'Shah');
insert into bds35_tab_unq values (124, 'riju', 'kc');
insert into bds35_tab_unq values (125, 'kaju', 'gc');
insert into bds35_tab_unq values (126, 'paji', 'bc');
insert into bds35_tab_unq values (127, 'saji', 'dc');

create table bds35_tab_prim(
id int not null,
fname varchar(255) not null,
lname varchar(255) not null,
primary key (id));

 

insert into bds35_tab_prim values (123, 'Viju', 'Shah');
insert into bds35_tab_prim values (124, 'riju', 'kc');
insert into bds35_tab_prim values (125, 'kaju', 'gc');
insert into bds35_tab_prim values (126, 'paji', 'bc');
insert into bds35_tab_prim values (127, 'saji', 'dc');



 

create table bds35_tab_fore(
order_id int not null,
order_number int not null,
ID int,
PRIMARY KEY (order_id),
CONSTRAINT FK_PersonOrder FOREIGN KEY (ID)
REFERENCES bds35_tab_prim(ID)
);



 

insert into bds35_tab_fore values (7651234, 98765, 1234);
insert into bds35_tab_fore values (7651235, 98765, 1234);
insert into bds35_tab_fore values (7651236, 98765, 1234);
insert into bds35_tab_fore values (7651237, 98765, 1234);
insert into bds35_tab_fore values (7651238, 98765, 1234);

select * from bds35_tab_fore;

insert into bds35_tab_fore values (7651234, 98765, 1234);
insert into bds35_tab_fore values (7651235, 98765, 1234);
insert into bds35_tab_fore values (7651236, 98765, 1234);
insert into bds35_tab_fore values (7651237, 98765, 1234);
insert into bds35_tab_fore values (7651238, 98765, 1234);

 

insert into bds35_tab_fore values (7651239, 98766, 1235);
insert into bds35_tab_fore values (7651240, 98766, 1235);
insert into bds35_tab_fore values (7651241, 98766, 1235);
insert into bds35_tab_fore values (7651242, 98766, 1235);
insert into bds35_tab_fore values (7651243, 98766, 1235);

 

insert into bds35_tab_fore values (7651244, 98767, 1236);
insert into bds35_tab_fore values (7651245, 98767, 1236);
insert into bds35_tab_fore values (7651246, 98767, 1236);
insert into bds35_tab_fore values (7651247, 98767, 1236);
insert into bds35_tab_fore values (7651248, 98767, 1236);


insert into bds35_tab_prim values (1234, 'Viju', 'Shah');
insert into bds35_tab_prim values (1235, 'Vijay', 'Shah');
insert into bds35_tab_prim values (1236, 'Vijayan', 'Shah');
insert into bds35_tab_prim values (1237, 'Vijayta', 'Shah');
insert into bds35_tab_prim values (1238, 'Vijan', 'Shah');


 

insert into bds35_tab_fore values (7651249, 98768, 1237);
insert into bds35_tab_fore values (7651250, 98768, 1237);
insert into bds35_tab_fore values (7651251, 98768, 1237);
insert into bds35_tab_fore values (7651252, 98768, 1237);
insert into bds35_tab_fore values (7651253, 98768, 1237);


insert into bds35_tab_fore values (7651254, 98769, 1238);
insert into bds35_tab_fore values (7651255, 98769, 1238);
insert into bds35_tab_fore values (7651256, 98769, 1238);
insert into bds35_tab_fore values (7651257, 98769, 1238);
insert into bds35_tab_fore values (7651258, 98769, 1238);