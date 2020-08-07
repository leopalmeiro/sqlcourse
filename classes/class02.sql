create table profile(
    id int not null AUTO_INCREMENT,
    descr VARCHAR(255) not null,
    dt_created DATETIME not null,
    dt_updated DATETIME not null,
    PRIMARY KEY (id)
);

insert into profile (descr, dt_created, dt_updated) values ('ADMIN', NOW(), NOW() );
insert into profile (descr, dt_created, dt_updated) values ('USER', NOW(), NOW() );


select * from profile

create table users(
    id int not null auto_increment,
    name VARCHAR(255) not null,
    email varchar(255) not NULL,
    pass VARCHAR(255) not null,
    dt_created DATETIME not NULL;
    dt_updated DATETIME not null;
    fk_profile int not NULL,
    PRIMARY key (id),
    FOREIGN key(fk_profile) REFERENCES profile(id)
)

INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('LEONARDO', 'palmeiro.leonardo@gmail.com', md5('123'), now(), now(), 1);
INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('MANUELLA', 'palmeiro.manuella@gmail.com', md5('123'), now(), now(), 2);
INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('PRISCILLA', 'palmeiro.priscilla@gmail.com', md5('123'), now(), now(), 2);
INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('PAOLA', 'palmeiro.paola@gmail.com', md5('admin'), now(), now(), 1);
INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('TEO', 'palmeiro.teo@gmail.com', md5('123'), now(), now(), 1);

select * from users;

--INNER JOIN
SELECT * FROM users u INNER JOIN (profile p) on u.fk_profile = p.id;
SELECT u.*, p.* FROM users u INNER JOIN (profile p) on u.fk_profile = p.id;



--SELECT CARTESIAN
select u.*, p.* FROM
users u, profile p
where u.fk_id = p.id

--
SELECT *
FROM users u 
WHERE u.fk_profile = 1; --result WITH TEO, WE NEED TO CHANGE TEO TO USER

update users set fk_profile = 2 where id=5;

select * from users
where id=5;

--UPDATE WITH SUB QUERY
update users set fk_profile = (select id from profile p where p.profile = 'ADMIN') where id=5;

select * from users
where id=5;

update users set fk_profile = (select id from profile p where p.profile = 'USER') where id=5;

select * from users where id=5;

--UPDATE USER
update users set fk_profile = (select id from profile p where p.profile = 'TEST') where id=5; -- ERROR

select * from users

--LEFT JOIN
insert into profile (descr, dt_created, dt_updated) values ('DEVELOPER', NOW(), NOW() );
SELECT * FROM profile p LEFT JOIN (users u) on p.id = u.fk_profile ;


--RIGHT JOIN
SELECT * FROM users u RIGHT JOIN (profile p) on u.fk_profile = p.id;


-- 
select u.name , p.descr  from 
users u inner join profile p
on u.fk_profile = p.id;



--how many user are with admin
select COUNT(*) as tot, p.descr from 
users u inner join profile p on u.fk_profile = p.id
GROUP by u.fk_profile;

-- alter table
ALTER TABLE users
ADD login varchar(30);

---create a table menu
create table modules(
    id int auto_increment,
    name varchar(255),
    PRIMARY KEY (id)
);
insert into modules (name) values('payment');
insert into modules (name) values('dashboard');
insert into modules (name) values('password');

--much to much
create table profile_access(
    id int auto_increment,
    fk_profile int not null,
    fk_modules int not null,
    dt_created DATETIME not null,
    PRIMARY key (id),
    FOREIGN KEY (fk_profile) REFERENCES profile(id),
    FOREIGN KEY (fk_modules) REFERENCES modules(id)
);

insert into profile_access( fk_profile, fk_modules, dt_created) values (1, 1, now());
insert into profile_access( fk_profile, fk_modules, dt_created) values (1, 2, now());
insert into profile_access( fk_profile, fk_modules, dt_created) values (1, 3, now());
insert into profile_access( fk_profile, fk_modules, dt_created) values (2, 1, now());

-- consultar acesso
select *
from profile_access pa, profile p, modules m
where pa.fk_modules = m.id; --??? result wrong!!! duplicate all rows because of table profiles

select *
from profile_access pa, profile p, modules m
where pa.fk_modules = m.id
and pa.fk_profile = p.id ; -- now is ok

select p.descr, m.name 
from profile_access pa, profile p, modules m
where pa.fk_modules = m.id
and pa.fk_profile = p.id;


-- SABER QUAL APP UM USUARIO TEM DISPONIVEL
select u.*
from users u, profile p , modules m, profile_access pa
where u.fk_profile = p.id 
and pa.fk_modules = m.id 
and pa.fk_profile = p.id; -- why duplicate?? because we need to use group by

select u.name 
from users u, profile p , modules m, profile_access pa
where u.fk_profile = p.id 
and pa.fk_modules = m.id 
and pa.fk_profile = p.id
group by u.name;

 --with all relacionship dont'n need to use group by
select u.name, p.descr, m.name 
from users u, profile p , modules m, profile_access pa
where u.fk_profile = p.id 
and pa.fk_modules = m.id 
and pa.fk_profile = p.id;

select u.name, p.descr, m.name 
from users u, profile p , modules m, profile_access pa
where u.fk_profile = p.id 
and pa.fk_modules = m.id 
and pa.fk_profile = p.id
and u.name = 'LEONARDO'
order by u.name ;

select u.name, p.descr, m.name 
from users u, profile p , modules m, profile_access pa
where u.fk_profile = p.id 
and pa.fk_modules = m.id 
and pa.fk_profile = p.id
and u.name = 'LEONARDO'
order by u.name ;

select m.name 
from users u, profile p , modules m, profile_access pa
where u.fk_profile = p.id 
and pa.fk_modules = m.id 
and pa.fk_profile = p.id
and u.name = 'LEONARDO'
order by u.name ;

-- show databases
show databases;

-- show tables
show tables;
-- limit



