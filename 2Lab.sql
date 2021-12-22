drop table worker;
drop table animal;
drop table aviary;
drop table event;
drop table zoo;

create table zoo(
id int primary key,
name varchar(50),
country varchar(20),
open_date date,
type varchar(20),
price float,
aviary_count int
);

create table event(
id int primary key,
name varchar(30),
event_date date,
fundraising float,
event_type varchar(20)
);

create table aviary(
id int primary key,
type varchar(20),
animal_count int,
id_event int,
CONSTRAINT aviary_event FOREIGN KEY (id_event) REFERENCES event(id),
main_worker varchar(20)
);

create table worker(
id int primary key,
name varchar(50),
birth_date date,
work_date date,
id_aviary int,
CONSTRAINT worker_aviary FOREIGN KEY (id_aviary) REFERENCES aviary(id),
phone varchar(15),
email varchar(30)
);

create table animal(
id int primary key,
name varchar(30),
species varchar(30),
type varchar(30),
birth_date date,
id_aviary int,
CONSTRAINT animal_aviary FOREIGN KEY (id_aviary) REFERENCES aviary(id),
climate varchar(30),
health varchar(30)
);



