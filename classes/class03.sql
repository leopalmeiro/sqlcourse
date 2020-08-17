--VIEW
create table log(
    id int auto_increment,
    dt_inserted datetime not null,
    action VARCHAR(255) not null,
    PRIMARY KEY (id)
);

INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );


CREATE VIEW daily_logs AS SELECT * FROM log l where  DATE(l.dt_inserted) = DATE(NOW());

SELECT count(*) from daily_logs ;
SELECT * from daily_logs ;
 

INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( now(), 'insert' );
INSERT INTO log (dt_inserted, action) values ( DATE_ADD(NOW(), INTERVAL 1 DAY), 'select * from users' ); -- plus 1 on date

SELECT count(*) from log ;

SELECT count(*) from daily_logs;

--MYSQL PARA VERIFICAR views
SHOW FULL TABLES IN class02 
WHERE table_type='VIEW';

--SEQUENCE -- ROW BACK AND COMMIT
CREATE SEQUENCE ON table_name [VALUE start STEP incr]-- in mysql works diferent in mysql has auto increment

ALTER TABLE users AUTO_INCREMENT=100;
INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('NEI', 'palmeiro.nei@gmail.com', md5('admin'), now(), now(), 1);
select * from users u;

--trigger
CREATE TRIGGER lcase_insert 
BEFORE INSERT ON users 
FOR EACH ROW
SET NEW.name = LOWER(NEW.name);


INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('FERNANDO', 'palmeiro.nei@gmail.com', md5('admin'), now(), now(), 2);
SELECT * FROM users u 
INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('lEaNdRo', 'palmeiro.lEaNdRo@gmail.com', md5('admin'), now(), now(), 2);
SELECT * FROM users u 


CREATE TRIGGER log 
BEFORE INSERT ON users
  FOR EACH ROW BEGIN
    INSERT INTO log (dt_inserted, action) values ( now(), 'insert on users' );
END

INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('lEaNdRo', 'palmeiro.lEaNdRo@gmail.com', md5('admin'), now(), now(), 2);
INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('lEaNdRo', 'palmeiro.lEaNdRo@gmail.com', md5('admin'), now(), now(), 2);
INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('lEaNdRo', 'palmeiro.lEaNdRo@gmail.com', md5('admin'), now(), now(), 2);
INSERT into users (name, email, pass, dt_created, dt_updated, fk_profile) values('lEaNdRo', 'palmeiro.lEaNdRo@gmail.com', md5('admin'), now(), now(), 2);



--create a procedure
CREATE PROCEDURE GetUserAcess(
in user_id int
)
BEGIN
	SELECT 
		m.name 
	FROM users u 
	inner join profile_access p
	on (u.fk_profile = p.fk_profile )
	inner join modules m 
	on (p.fk_modules =m.id )
	where u.id = user_id
	order by m.name;
end


call GetUserAcess(1);

call GetUserAcess(2);

-- pl/sql ORACLE EXEMPLE

-- available online in file 'sample1'
DECLARE
   x NUMBER := 100;
BEGIN
   FOR i IN 1..10 LOOP
      IF MOD(i,2) = 0 THEN     -- i is even
         INSERT INTO temp VALUES (i, x, 'i is even');
      ELSE
         INSERT INTO temp VALUES (i, x, 'i is odd');
      END IF;
      x := x + 100;
   END LOOP;
   COMMIT;
END;

--Output Table
SELECT * FROM temp ORDER BY col1;

NUM_COL1 NUM_COL2  CHAR_COL
-------- --------  ---------
       1      100  i is odd
       2      200  i is even
       3      300  i is odd
       4      400  i is even
       5      500  i is odd
       6      600  i is even
       7      700  i is odd
       8      800  i is even
       9      900  i is odd
      10     1000  i is even
