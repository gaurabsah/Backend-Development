
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
('John','john@gmail.com',300,'USA'),
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

SELECT * FROM students WHERE nationality = 'USA' AND score >= 400;
SELECT * FROM students WHERE nationality = 'USA' OR nationality = 'AUS';
SELECT * FROM students WHERE nationality != 'USA';
SELECT * FROM students WHERE score NOT BETWEEN 450 AND 800;


SELECT count(*), nationality FROM students GROUP BY nationality;
SELECT AVG(score) as avg_score, nationality FROM students GROUP BY nationality;
SELECT SUM(score) as sum_score, nationality FROM students GROUP BY nationality;
SELECT MIN(score) as min_score, nationality FROM students GROUP BY nationality;
SELECT MAX(score) as max_score, nationality FROM students GROUP BY nationality;

-- JOINS

CREATE TABLE IF NOT EXISTS customers(
    customerId INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL
);


INSERT INTO customers(name, country) VALUES 
('Gaurab', 'Nepal'),
('Abhi', 'India'),
('Anupam', 'India'),
('Munna', 'Nepal');

SELECT * FROM customers;


CREATE TABLE IF NOT EXISTS orders(
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    orderDate DATE NOT NULL
);

INSERT INTO orders (customerId, orderDate) VALUES 
(1,'1996-09-18'),
(2, '1997-09-12'),
(37, '1996-09-19'),
(77, '1996-09-20');

SELECT * FROM orders;

-- Inner Join
SELECT o.orderId, o.orderDate, c.name FROM orders o
INNER JOIN customers c ON o.customerId = c.customerId;

