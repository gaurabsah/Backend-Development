
CREATE TABLE IF NOT EXISTS students(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    score INT NOT NULL,
    nationality VARCHAR(255) NOT NULL
);

DROP TABLE students;

--CRUD Operation
-- READ
SELECT * FROM students;

-- CREATE
INSERT INTO students (name,email,score,nationality) VALUES 
('John','john@gmail.com',900,'USA'),
('Alex','alex@gmail.com',750,'UK'),
('Ros','ros@gmail.com',800,'INDIA'),
('Marry','marry@gmail.com',600,'AUS'),
('Lana','lana@gmail.com',450,'CHINA');

-- READ with filter
SELECT * FROM students WHERE score < 500;
SELECT DISTINCT * FROM students LIMIT 2;
SELECT * FROM students WHERE score BETWEEN 450 AND 800 ORDER BY score DESC;
SELECT * FROM students WHERE name LIKE 'A%';
SELECT * FROM students WHERE name LIKE '%a%';
SELECT * FROM students WHERE nationality IN ('UK','USA','AUS') ORDER BY score ASC;

-- DELETE
DELETE FROM students WHERE email = 'john@gmail.com';

