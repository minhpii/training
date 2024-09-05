// Tạo 1 sinh viên thuộc khoa B có tất cả điểm các môn học bằng 5 và tuổi = 50

START TRANSACTION;

INSERT INTO users (name, email, password)
VALUES ("Vũ Thành Minh", "minhpii181@gmail.com", "abc@123");

SET @user_id = LAST_INSERT_ID();

INSERT INTO students (user_id, student_code, avatar, phone, gender, address, birthday, department_id, status)
SELECT @user_id, "MP181", null, "0342604034", 0, "Mỹ Đức", DATE_SUB(NOW(), INTERVAL 50 YEAR), id, 0
FROM departments
WHERE name LIKE '%Department A%' LIMIT 1;

SET @student_id = LAST_INSERT_ID();

INSERT INTO course_result (student_id, course_id, score)
SELECT @student_id, id, 5
FROM courses;

COMMIT;


// Cật nhật sinh viên có điểm trung bình thấp nhất thành 10

UPDATE course_result
SET score = 10
WHERE student_id IN (
	SELECT student_id
    FROM students JOIN course_result ON students.id = course_result.student_id
		GROUP BY students.id
		HAVING AVG(course_result.score) = (
        SELECT AVG(score) AS mediumscore
        FROM course_result
        GROUP BY student_id
            ORDER BY mediumscore ASC
            LIMIT 1
    )
);

// Xóa tất cả thông tin của sinh viên tuổi >= 30;

DELETE users, students 
FROM students 
JOIN users ON students.user_id = users.id
WHERE students.birthday < DATE_SUB(NOW(), INTERVAL 30 YEAR);

// Tìm các sinh viên thuộc khoa A và có điểm trung bình > 5

SELECT *, AVG(score) as mediumscore 
FROM students
JOIN course_result ON students.id = course_result.student_id
WHERE students.department_id = (
	SELECT id FROM departments WHERE name LIKE '%Department A%' LIMIT 1
)
GROUP BY students.id
HAVING AVG(score) > 5

// Tìm các sinh viên có SDT Viettel + có tuổi từ 18 -> 25 và có điểm thi > 5

SELECT *
FROM students
JOIN course_result ON students.id = course_result.student_id
WHERE phone REGEXP '^(03|09)[0-9]{8}$'
AND birthday <= DATE_SUB(NOW(), INTERVAL 18 YEAR)
AND birthday >= DATE_SUB(NOW(), INTERVAL 25 YEAR)
GROUP BY students.id
HAVING course_result.score > 5

// Giả xử A chưa học hết các môn tìm môn đó

SELECT * FROM courses
JOIN course_result ON courses.id = course_result.course_id
WHERE course_result.student_id = 9
AND course_result.score IS Null