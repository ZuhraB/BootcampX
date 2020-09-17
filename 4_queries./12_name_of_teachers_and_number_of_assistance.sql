SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*) as total_assistances 
FROM teachers
JOIN assistance_requests on teacher_id = teachers.id
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name

order by teacher; 

CREATE TABLE users (
  id  PRIMARY KEY,
  name,
  birth_year,
  member_since
);
INSERT INTO pets (name, owner_id)
VALUES ('meow', 1);
