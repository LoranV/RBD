alter table event
    drop constraint event_info;
   
alter table event
    drop column fundraising;
alter table event
    add fundraising float;
alter table event
    modify fundraising int not null;

alter table event
    rename column name to event_name;

alter table aviary
    drop constraint aviary_event;
alter table aviary
    add constraint aviary_event foreign key (id_event) references event(id);
    


