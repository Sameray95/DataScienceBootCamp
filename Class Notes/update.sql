
SET SQL_SAFE_UPDATES = 0;
#if safe update mode is on
 
 update bds35_tab_nn 
set id = 1198
where id = 1991;


select * from bds35_tab_prim;

select * from bds35_tab_fore;

UPDATE bds35_tab_fore
SET id = '1534'
WHERE id = '1234';


update  bds35_tab_prim 
set id = '1345' where id ='1234'    ;