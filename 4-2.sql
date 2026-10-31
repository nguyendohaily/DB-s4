USE test_db;

-- Cập nhật email mặc định/mới cho những sinh viên chưa có email
UPDATE students
SET email = 'chuanhapkip@example.com'
WHERE email IS NULL;

-- Kiểm tra lại danh sách các sinh viên vừa được cập nhật
SELECT * FROM students;

-- Cập nhật giới tính thành 'Nam' (hoặc giá trị cần sửa) cho SV005
UPDATE students
SET gender = 'Nam'
WHERE student_id = 'SV005';

-- Kiểm tra lại thông tin riêng của sinh viên SV005
SELECT * FROM students 
WHERE student_id = 'SV005';

-- Xóa bản ghi của sinh viên SV003
DELETE FROM students
WHERE student_id = 'SV003';

-- Kiểm tra toàn bộ bảng để xác nhận SV003 đã được xóa thành công
SELECT * FROM students;