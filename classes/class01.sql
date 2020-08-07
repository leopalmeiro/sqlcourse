-- https://sqliteonline.com/ 
-- SQL ONLINE

--TABLE WITHOUR PRIMARY KEY
create table people(
    id int not null,
    name VARCHAR(255) not NULL,
    age INT,
    children int
)

--INSERT SECTION
insert into people (id, name, age, children) VALUES (1, 'leonardo', 36, 3);
insert into people (id, name, age, children) VALUES (3, 'dalva', 75, 3);
insert into people (id, name, age, children) VALUES (1, 'Manuella', 10, null);
insert into people (id, name, age, children) VALUES (1, 'priscilla', 10, null);
insert into people (id, name, age, children) VALUES (2, 'Paola', 37, 1);
insert into people (id, name, age, children) VALUES (2, 'Fatima', 55, 1);
insert into people (id, name, age, children) VALUES (1, 'Teo', null, null);

--BASIC SELECTS FOR WARM UP
Select * from people;

Select * from people where age >= 18;

Select * from people where age <=17; -- what's happened in here?? why doesn´t retry Teo???, because age is null

-- SELECT WITH AND / OR
Select * from people 
where (age <=17 and age = null); -- why dont have results?? becase when use and both condicional need be true for find -- table true

Select * from people 
where (age <= 17 or age is null);

select * from people 
where age >= 18
and children = 1;

--SELECT WITH BETWEEN
select * from people
where age BETWEEN 36 and 55;

--SELECT WITH COUNT
select count(*) from people;

select count(*) from people
where age >18;

--SELECT WITH LIKE
select * from people
where name like 'leo%'

select * from people
where name like '%a'

--SELECT WITH GROUP BY
select * from people
group by id; -- result no correct, why??? Because we need to group by fields.

select id from people
group by id; 

select count(*) ,id from people
group by id; 

select count(*) from people
where children = 1
group by id;

select count(*), name from people
group by id, name;

select count(id), name from people
where children = 1
group by id, name;

--SELECT WITH DISTINCT (just remove results duplicates)
--ADD ONE ROW DUPLICATE
insert into people (id, name, age, children) VALUES (1, 'leonardo', 36, 3);
select DISTINCT * from people; -- remove all duplicates

--SELECT WITH ORDER BY
--ORDER BY COLUMN INDEX
select * from people
order by 1;

select * from people
order by 2;

--ORDER BY COLUMN NAME
select * from people
order by age asc;

select * from people
order by children desc;

-- SELECT JUST ONE FIELD
select id from people;

select id, name from people;

--SELECT WITH MATH
select avg(age) from people;

select sum(age) from people;

--SELECT WITH ALIAS
select * from people p
where p.name like 'leo%';

select name as name01 from people p;

--DELETE
--NEVER DO THAT!!!
delete from people

--insert
insert into people (id, name, age, children) VALUES (1, 'leonardo', 36, 3);
insert into people (id, name, age, children) VALUES (3, 'dalva', 75, 3);
insert into people (id, name, age, children) VALUES (1, 'Manuella', 10, null);
insert into people (id, name, age, children) VALUES (1, 'priscilla', 10, null);
insert into people (id, name, age, children) VALUES (2, 'Paola', 37, 1);
insert into people (id, name, age, children) VALUES (2, 'Fatima', 55, 1);
insert into people (id, name, age, children) VALUES (1, 'Teo', null, null);
insert into people (id, name, age, children) VALUES (1, 'leonardo', 36, 3);

delete from people 
where id = 3;

select * from people 
where id = 3;
insert into people (id, name, age, children) VALUES (3, 'dalva', 75, 3);

--UPDATE
update people 
set age = 0
where age is null; 

update people 
set children = 0
where children is null; 

select * from people
where name = 'teo'; -- why not found?? because sql is case sensitive

select * from people
where name = 'Teo';

--ADD FIELD UPPER CASE
select * from people
where upper(name) = upper('teo');

--UPDATE WITH MORE FIELDS
update people 
set age = age + 1, children = 4 
where name = 'leonardo'; 


--home WORK
--tips study about database modeling
--PRIMARY key and FOREIGN key
--create a table user and profile
USER
id
name
profile
Creation DATE
update DATE

profile
ID
DESCRIPTION


Install mysql local or docker
and acess by sql client

estudar como criar tablelas com Primary key auto auto increment