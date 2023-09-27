
use  datascience;

show tables;

select * from bds35_tab_nn;
select * from bds35_tab_prim;
select * from bds35_tab_unq;
select * from bds35_tab_fore;

insert into bds35_tab_nn values('00','sam','neupane');
insert into bds35_tab_nn values('01','eer','neupane');
insert into bds35_tab_nn values('02','ameer','neupane');
insert into bds35_tab_nn values('03','samir','neupane');
insert into bds35_tab_nn values('04','saeer','neupane');
insert into bds35_tab_nn values('05','samer','neupane');


insert into bds35_tab_prim values('01', 'ram','khadka');
insert into bds35_tab_prim values('02', 'hari','kc');
insert into bds35_tab_prim values('03', 'shyam','bk');
insert into bds35_tab_prim values('04', 'gita','gc');
insert into bds35_tab_prim values('05', 'sita','bc');


insert into bds35_tab_unq values('01', 'john','khadka');
insert into bds35_tab_unq values('02', 'joe','kc');
insert into bds35_tab_unq values('03', 'athira','bk');
insert into bds35_tab_unq values('04', 'garuda','gc');
insert into bds35_tab_unq values('05', 'katappa','bc');


INSERT INTO bds35_tab_fore (order_id, order_number, ID) VALUES (1, 1001, 1);
INSERT INTO bds35_tab_fore (order_id, order_number, ID) VALUES (2, 1002, 2);
INSERT INTO bds35_tab_fore (order_id, order_number, ID) VALUES (3, 1003, 3);
INSERT INTO bds35_tab_fore (order_id, order_number, ID) VALUES (4, 1004, 4);
INSERT INTO bds35_tab_fore (order_id, order_number, ID) VALUES (5, 1005, 1);

