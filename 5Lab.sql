create table aviary1
    as select * from aviary
        where id <=3;
        
create table aviary2
    as select * from aviary
        where id >=2;

select * from aviary1
    union select * from aviary2;
    
select * from aviary2
    union all select * from aviary;

select * from aviary1
    intersect select * from aviary2;
   
select * from aviary1
    minus select * from aviary2; 
    
select * from aviary1, aviary2;
