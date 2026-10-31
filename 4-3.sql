USE test_db;

SELECT student_id, full_name, date_of_birth
FROM students
WHERE date_of_birth BETWEEN '2003-01-01' AND '2005-12-31';

SELECT student_id, full_name, birth_date
FROM students
WHERE gender IN ('Nam', 'Nữ');

SELECT student_id, full_name, birth_date
FROM students
WHERE student_id IN ('SV001', 'SV004', 'SV005');