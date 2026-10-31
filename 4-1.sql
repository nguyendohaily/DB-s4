USE test_db;

INSERT INTO students (student_id, full_name, date_of_birth, gender, email)
VALUES
    ('SV01', 'Nguyễn Văn An', '2004-03-15', 'Nam', 'an.nv@example.com'),
    ('SV02', 'Trần Thị Bình', '2004-07-22', 'Nữ', 'binh.tt@example.com'),
    ('SV03', 'Lê Hoàng Cường', '2003-11-05', 'Nam', NULL),
    ('SV04', 'Phạm Minh Đức', '2004-01-30', 'Nam', 'duc.pm@example.com'),
    ('SV05', 'Vũ Mai Hoa', '2004-09-18', 'Nữ', NULL);

SELECT * FROM students;

SELECT student_id, full_name, email 
FROM students;

