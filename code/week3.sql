-- Week 3 code ---------------------

SELECT last_name, school, salary From teachers;

SELECT last_name, school, salary From teachers
	ORDER BY salary DESC;

SELECT last_name, school, salary From teachers
	ORDER BY 1 ASC;

SELECT DISTINCT school FROM teachers ORDER BY school;

--WHERE 문
SELECT last_name, school, salary From teachers
	ORDER BY salary DESC; 

SELECT last_name, school, salary From teachers
	WHERE salary >=40000
	ORDER BY salary DESC;

SELECT last_name, school, salary From teachers
	WHERE salary BETWEEN 20000 AND 40000
	ORDER BY salary DESC; 


SELECT first_name, last_name, school, salary From teachers
	WHERE last_name ILIKE 's%' OR first_name ILIKE 's%'
	ORDER BY salary DESC; 


