create database student;
use student;

create table record
(
name varchar (100),
rollno varchar (100),
std varchar (100)
);

select * from record;

insert into record values('Mrunmayee','nineteen','fourth');
insert into record values('Shalmali','twenty nine','fourth');
insert into record(name,std) values('Sharmili','Third');
insert into record(name,rollno) values('Madhav','four');