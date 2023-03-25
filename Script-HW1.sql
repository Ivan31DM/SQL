


CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);


select * from students
order by name;

select id from students

select name from students

select email from students 

select name, email from students

select id, name, email, created_on from students 

SELECT name from students
where password='12333';

select name from students 
	where created_on= '2021-03-26 00:00:00';

select name from students 
	where name like '%Anna%';

select name from students 
	where name like '%8';


select name from students 
	where name like '%a%';

-- 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00
select name from students 
	where created_on = '2021-07-12 00:00:00';

-- 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select name from students 
	where created_on = '2021-07-12 00:00:00'
	and password= '1m313';
-- 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select name from students 
	where created_on = '2021-07-12 00:00:00'
	and name like '%Andrey%';
-- 16. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select name from students 
	where created_on = '2021-07-12 00:00:00'
	and name like '%8%';

-- 17. Вывести пользователя у которых id равен 110
select name from students
	where id = 110;
-- 18. Вывести пользователя у которых id равен 153
select name from students
	where id = 153;
-- 19. Вывести пользователя у которых id больше 140
select name from students
	where id > 110;
-- 20. Вывести пользователя у которых id меньше 130
select name from students
	where id < 130;
-- 21. Вывести пользователя у которых id меньше 127 или больше 188
select name from students
	where id < 127 or id>188;

-- 22. Вывести пользователя у которых id меньше либо равно 137
select name from students
	where id <= 137;

-- 23. Вывести пользователя у которых id больше либо равно 137
select name from students
	where id >= 137;
-- 24. Вывести пользователя у которых id больше 180 но меньше 190
select name from students
	where id >180
	and  id<190;
	

-- 25. Вывести пользователя у которых id между 180 и 190
SELECT name FROM students
WHERE id BETWEEN 180 AND 190;
-- 26. Вывести пользователей где password равен 12333, 1m313, 123313
select name from students 
	where password  in ('1m313','1233','123313');
-- 27. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select name from students 
	where created_on  in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00');
-- 28. Вывести минимальный id 
select min(id) from students;
-- 29. Вывести максимальный.
select max(id) from students;
-- 30. Вывести количество пользователей
select count(id) from students;
-- 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select id, name, created_on from students
	order by created_on;
-- 32. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id, name, created_on from students
	order by created_on desc;


























create table employees (
	id serial primary key,
	employee_name varchar(50) not null
	);
	
create table salary_hw (
	id serial primary key,
	monthey_salary int not null
	);
	
select * from employees

insert into employees(id)
	values (1),
		(2),
		(3),
		(4),
		(5),
		(6),
		(7),
		(8),
		(9),
		(10);
			
insert into salary_hw(monthey_salary)
	values  (1000),
			(1100),
			(1200),
			(1300),
			(1400),
			(1500),
			(1600),
			(1700),
			(1800),
			(1900),
			(2000),
			(2100),
			(2200),
			(2300),
			(2400),
			(2500);