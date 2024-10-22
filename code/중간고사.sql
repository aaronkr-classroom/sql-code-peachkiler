--1. 테이블 생성 4개
--2. 조인문 사용 3개
--3. SELECT 데이터 탐색 3개
CREATE TABLE course
(
	id bigserial,
	name varchar(20),
	teacher_id varchar(20)
	
);
insert into course(name,teacher_id) values ('Database Design',1)
insert into course(name,teacher_id) values ('English literature',2)	
insert into course(name,teacher_id) values ('Python programing',1)	

select * from course

CREATE TABLE student
(
	id bigserial,
	first_name varchar(20),
	last_name varchar(20)
	
);
--alter table student alter column last_name type varchar(20);

insert into student(first_name,last_name) values ('Shreya','Bain')
insert into student(first_name,last_name) values ('Rianna','Foster')	
insert into student(first_name,last_name) values ('Yosef','Naylor')	
DELETE FROM student WHERE id = 1; COMMIT
select * from student

CREATE TABLE student_course
(
	student_id bigserial,
	course_id bigserial
	
);

alter table student_course alter column student_id type varchar(20);
alter table student_course alter column course_id type varchar(20);

insert into student_course(student_id,course_id) values ('1','2')
insert into student_course(student_id,course_id) values ('1','3')
insert into student_course(student_id,course_id) values ('2','1')	
insert into student_course(student_id,course_id) values ('2','2')	
insert into student_course(student_id,course_id) values ('2','3')	
insert into student_course(student_id,course_id) values ('3','1')	



CREATE TABLE teacher
(
	id bigserial,
	first_name varchar(10),
	last_name varchar(10)
	
);
insert into teacher(first_name,last_name) values ('Taylah','Booker')
alter table teacher alter column first_name type varchar(30);
alter table teacher alter column last_name type varchar(30);


insert into teacher(first_name,last_name) values ('Sarah-Louise','Blake')
select * from teacher

-- 조인
SELECT *
FROM student_course
LEFT JOIN student ON student_course."student_id" = CAST(student."id" AS varchar)
LEFT JOIN course ON student_course."course_id" = course."id"
LEFT JOIN teacher ON student_course."course_id" = teacher."course_id";

--조회

SELECT first_name 
FROM student 
WHERE course_name = 'Database Design';

SELECT course_name 
FROM course 
WHERE instructor_name = 'Taylah Brooker';

SELECT name 
FROM students 
WHERE last_name LIKE 'B%'
UNION
SELECT name 
FROM teachers 
WHERE last_name LIKE 'B%';









