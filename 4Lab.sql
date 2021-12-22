delete from Aviary where id>0;
insert into Aviary(id, type, animal_count, main_worker) values (1, 'Forest', 9, 'Vlad');
insert into Aviary(id, type, animal_count, main_worker) values (2, 'Water', 22, 'Loran');
insert into Aviary(id, type, animal_count, main_worker) values (3, 'Jungle', 14, 'Vlad');
insert into Aviary(id, type, animal_count, main_worker) values (4, 'Forest', 7, 'Loran');
insert into Aviary(id, type, animal_count, main_worker) values (5, 'Aqua', 35, 'Const');
insert into Aviary(id, type, animal_count, main_worker) values (6, 'Cave', 4, 'Sql');
insert into Aviary(id, type, animal_count, main_worker) values (7, 'Water', 57, 'Vlad');
insert into Aviary(id, type, animal_count, main_worker) values (8, 'Cave', 33, 'Loran');

update aviary set main_worker = 'Maks' where main_worker = 'Sql';
update aviary set animal_count = '29' where id = 6;

delete from aviary where main_worker = 'Const';
delete from aviary where id = 8;