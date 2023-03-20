create database schooldb;
use schooldb;

create table student21
(
id int primary key,
name varchar(50) not null,
gender varchar(50) not null,
DOB datetime not null,
total_score int not null
);
drop table student21;
insert into student21
values(1,'Jolly','Female','12-JUN-1989',500),(2,'Jon','male','02-FEB-1974',545),
(3,'Sara','female','07-MAR-1988',600),(4,'Laura','female','22-DEC-1981',400),
(5,'Mrunmayee','female','29-JAN-1995',500),(6,'Shal','male','19-APRIL-1994',450);

use schooldb
go
/*creating function for exact values with logic*/
create function BornBefore
(
@DOB as datetime
)
returns table
as

return 
select * from student21 where DOB < @DOB

/*Now fetching from created function*/
use schooldb

select name,gender,DOB from dbo.BornBefore('1980-01-01')order by DOB
