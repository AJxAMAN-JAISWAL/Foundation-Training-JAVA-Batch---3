-- TASK 1ST

-- 1. CREATING DATABASE
CREATE DATABASE STUDENTINFOSYSTEM;

-- USING DATABASE
USE STUDENTINFOSYSTEM;

-- 2. AND 4. CREATING STUDENT TABLE
CREATE TABLE IF NOT EXISTS STUDENTS(
STUDENT_ID INT PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
DATE_OF_BIRTH DATE,
EMAIL VARCHAR(80),
PHONE_NO VARCHAR(10) );

-- CREATING TEACHER TABLE
CREATE TABLE IF NOT EXISTS TEACHER(
TEACHER_ID INT PRIMARY KEY AUTO_INCREMENT,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
EMAIL VARCHAR(80));

-- CREATING COURSES TABLE
CREATE TABLE IF NOT EXISTS COURSES(
COURSE_ID INT PRIMARY KEY,
COURSE_NAME VARCHAR(50),
CREDITS INT,
TEACHER_ID INT,
CONSTRAINT FK_TEACHER FOREIGN KEY(TEACHER_ID) REFERENCES TEACHER(TEACHER_ID)
);

-- CREATING ENROLLMENTS TABLE
CREATE TABLE IF NOT EXISTS ENROLLMENTS(
ENROLLMENT_ID INT PRIMARY KEY AUTO_INCREMENT,
STUDENT_ID INT UNIQUE,
COURSE_ID INT,
ENROLLMENT_DATE DATE ,
CONSTRAINT FK_STUDENT_COURSE FOREIGN KEY(STUDENT_ID) REFERENCES STUDENTS(STUDENT_ID), FOREIGN KEY(COURSE_ID) REFERENCES COURSES(COURSE_ID)
);

-- CREATING PAYMENTS TABLE

CREATE TABLE IF NOT EXISTS PAYMENTS(
PAYMENT_ID INT PRIMARY KEY AUTO_INCREMENT,
STUDENT_ID INT,
AMOUNT INT,
PAYMENT_DATE DATE,
CONSTRAINT FK_STUDENT FOREIGN KEY(STUDENT_ID) REFERENCES STUDENTS(STUDENT_ID) );

-- 5. INSERTING VALUES IN STUDENTS TABLE

INSERT INTO STUDENTS(STUDENT_ID, FIRST_NAME, LAST_NAME, DATE_OF_BIRTH, EMAIL, PHONE_NO) 
VALUES
    (1, 'Jane', 'Smith', '2001-02-20', 'jane.smith@example.com', '2345678901'),
    (2, 'Michael', 'Brown', '2002-03-25', 'michael.brown@example.com', '3456789012'),
    (3, 'Emily', 'Davis', '2003-04-30', 'emily.davis@example.com', '4567890123'),
    (4, 'David', 'Wilson', '2004-05-05', 'david.wilson@example.com', '5678901234'),
    (5, 'Sarah', 'Johnson', '2005-06-10', 'sarah.johnson@example.com', '6789012345'),
    (6, 'Chris', 'Lee', '2006-07-15', 'chris.lee@example.com', '7890123456'),
    (7, 'Anna', 'Martinez', '2007-08-20', 'anna.martinez@example.com', '8901234567'),
    (8, 'James', 'Anderson', '2008-09-25', 'james.anderson@example.com', '9012345678'),
    (9, 'Laura', 'Thomas', '2009-10-30', 'laura.thomas@example.com', '0123456789'),
    (10, 'Alex', 'Taylor', '2010-11-05', 'alex.taylor@example.com', '1234567891');
    
-- 5. INSERTING VALUES IN TEACHER TABLE
    
INSERT INTO TEACHER(TEACHER_ID, FIRST_NAME, LAST_NAME, EMAIL) 
VALUES
    (1, 'Alice', 'Johnson', 'alice.johnson@example.com'),
    (2, 'Bob', 'Smith', 'bob.smith@example.com'),
    (3, 'Carol', 'Davis', 'carol.davis@example.com'),
    (4, 'David', 'Wilson', 'david.wilson@example.com'),
    (5, 'Eve', 'Brown', 'eve.brown@example.com'),
    (6, 'Frank', 'Taylor', 'frank.taylor@example.com'),
    (7, 'Grace', 'Anderson', 'grace.anderson@example.com'),
    (8, 'Hank', 'Thomas', 'hank.thomas@example.com'),
    (9, 'Ivy', 'Martinez', 'ivy.martinez@example.com'),
    (10, 'Jack', 'Lee', 'jack.lee@example.com');
    
-- 5. INSERTING VALUES IN COURSES TABLE
    
INSERT INTO COURSES(COURSE_ID, COURSE_NAME,CREDITS,TEACHER_ID)
VALUES
    (101, 'Mathematics', 4, 1),
    (102, 'Physics', 3, 2),
    (103, 'Chemistry', 4, 3),
    (104, 'Biology', 3, 4),
    (105, 'History', 2, 5),
    (106, 'Geography', 3, 6),
    (107, 'English', 4, 7),
    (108, 'Computer Science', 4, 8),
    (109, 'Art', 2, 9),
    (110, 'Physical Education', 1, 10);
    
-- 5. INSERTING VALUES IN PAYMENTS TABLE
    
INSERT INTO PAYMENTS(PAYMENT_ID,STUDENT_ID,AMOUNT,PAYMENT_DATE)
VALUES
    (1, 1, 5000, '2024-01-15'),
    (2, 2, 4500, '2024-02-20'),
    (3, 3, 5200, '2024-03-25'),
    (4, 4, 4800, '2024-04-30'),
    (5, 5, 5300, '2024-05-05'),
    (6, 6, 4700, '2024-06-10'),
    (7, 7, 4900, '2024-07-15'),
    (8, 8, 5100, '2024-08-20'),
    (9, 9, 4600, '2024-09-25'),
    (10, 10, 5500, '2024-10-30');
    
-- 5. INSERTING VALUES IN ENROLLMENTS TABLE
    
INSERT INTO ENROLLMENTS(ENROLLMENT_ID, STUDENT_ID,COURSE_ID,ENROLLMENT_DATE)
VALUES
    (1, 1, 101, '2024-01-15'),
    (2, 2, 102, '2024-02-20'),
    (3, 3, 103, '2024-03-25'),
    (4, 4, 104, '2024-04-30'),
    (5, 5, 105, '2024-05-05'),
    (6, 6, 106, '2024-06-10'),
    (7, 7, 107, '2024-07-15'),
    (8, 8, 108, '2024-08-20'),
    (9, 9, 109, '2024-09-25'),
    (10, 10, 110, '2024-10-30');
    
-- SELECT COMMANDS
SELECT* FROM STUDENTS;
SELECT* FROM TEACHER;
SELECT* FROM ENROLLMENTS;
SELECT* FROM COURSES;
SELECT* FROM PAYMENTS;
SHOW TABLES;

-- DROP COMMANDS
DROP TABLE STUDENTS;
DROP TABLE TEACHER;
DROP TABLE COURSES;
DROP TABLE ENROLLMENTS;
DROP TABLE PAYMENTS;
DROP DATABASE STUDENTINFOSYSTEM;

-- DESCRIBE COMMANDS
DESC STUDENTS;
DESC TEACHER;
DESC COURSES;
DESC ENROLLMENTS;
DESC PAYMENTS;

-- CONSTRAINTS AND ALTER COMMANDS
SELECT CONSTRAINT_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'Enrollments' AND COLUMN_NAME = 'COURSE_ID';
ALTER TABLE ENROLLMENTS
DROP FOREIGN KEY enrollments_ibfk_1;


-- TASK 2ND
-- 1. INSERTING A NEW STUDENT INT STUDENTS TABLE
INSERT INTO STUDENTs VALUES(11,'John','Doe','1995-08-15','jojn.doe@example.com','1234567890');

-- 2. ENROLLING A STUDENT INTO AN EXSISTING COURSE IN ENROLLMENT TABLES
INSERT INTO ENROLLMENTS VALUES(11, 11, 108,'2024-09-19');

-- 3. UPDATING THE EMAIL IN TEACHER TABLE
UPDATE TEACHER SET EMAIL='BOB.SMITH@HEXAWARE.COM' WHERE TEACHER_ID=2; 

-- 4. DELETING THE ENROLLMENT RECORD OF LAURA FROM STUDENTS
DELETE FROM ENROLLMENTS WHERE STUDENT_ID=9;

-- 5. UPDATING THE COURSES BY ASSIGNING COMPUTER SCIENCE TO 
UPDATE COURSES SET TEACHER_ID=1 WHERE COURSE_ID=108;

-- 6. DELETING RECORDS FROM STUDENTS TABLE AND REMOVING THE SAME RECORDS FROM ENROLLMENTS TABLE
ALTER TABLE ENROLLMENTS 
DROP FOREIGN KEY FK_STUDENT_COURSE;

ALTER TABLE PAYMENTS 
DROP FOREIGN KEY FK_STUDENT;

ALTER TABLE ENROLLMENTS 
ADD CONSTRAINT FK_STUDENT_EN FOREIGN KEY(STUDENT_ID) REFERENCES STUDENTS(STUDENT_ID) 
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE PAYMENTS 
ADD CONSTRAINT FK_STUDENT FOREIGN KEY(STUDENT_ID) REFERENCES STUDENTS(STUDENT_ID) 
ON DELETE CASCADE
ON UPDATE CASCADE;

DELETE FROM STUDENTS WHERE STUDENT_ID=3;

-- 7. UPDATING PAYMENT RECORDS INT PAYMENTS TABLE
UPDATE PAYMENTS SET AMOUNT=5800 WHERE STUDENT_ID=4;


-- TASK 3RD

-- 1. USING AGGREGATE FUNCTION WITH GROUP BY CLAUSE AND JOIN
SELECT S.FIRST_NAME, S.STUDENT_ID, SUM(P.AMOUNT) FROM STUDENTS S 
JOIN PAYMENTS P
ON S.STUDENT_ID=P.STUDENT_ID
GROUP BY STUDENT_ID ;

-- 2. COUNT ON ENROLLMENTS AND COURSES WITH JOIN
SELECT E.COURSE_ID, C.COURSE_NAME, COUNT(E.STUDENT_ID) AS TOTAL_COUNT FROM ENROLLMENTS E 
JOIN COURSES C 
ON E.COURSE_ID=C.COURSE_ID 
GROUP BY E.COURSE_ID;

-- 3. LEFT JOIN ON STUDENT AND ENROLLMENTS FOR STUDENTS NOT ENROLLED
INSERT INTO STUDENTs VALUES(12,'Eren','Jeager','2002-06-21','eren.jeager@example.com','9214560486');

SELECT S.FIRST_NAME, S.STUDENT_ID FROM STUDENTS S
LEFT JOIN ENROLLMENTS E
ON S.STUDENT_ID =E.STUDENT_ID
WHERE E.STUDENT_ID IS NULL;

-- 4. JOIN ON THREE TABLES STUDENTS, ENROLLMENTS, COURSES
SELECT S.FIRST_NAME, S.LAST_NAME, C.COURSE_NAME FROM STUDENTS S
JOIN ENROLLMENTS E 
ON S.STUDENT_ID=E.STUDENT_ID
JOIN COURSES C
ON E.COURSE_ID=C.COURSE_ID;

-- 5. JOIN ON TEACHER AND COURSES TABLE
SELECT T.FIRST_NAME, T.LAST_NAME, C.COURSE_NAME FROM TEACHER T 
JOIN COURSES C
ON T.TEACHER_ID=C.TEACHER_ID;

-- 6. RETRIVING LIST OF STUDENTS ENROLLED IN COMPUTER SCIENCE
SELECT S.FIRST_NAME, S.LAST_NAME, E.ENROLLMENT_DATE, C.COURSE_NAME FROM STUDENTS S 
JOIN ENROLLMENTS E
ON S.STUDENT_ID=E.STUDENT_ID
JOIN COURSES C
ON E.COURSE_ID=C.COURSE_ID
WHERE COURSE_NAME='COMPUTER SCIENCE';

-- 7. LEFT JOIN FOR STUDENTS NOT MADE ANY PAYMENTS
SELECT S.FIRST_NAME, S.LAST_NAME FROM STUDENTS S
LEFT JOIN PAYMENTS P 
ON S.STUDENT_ID=P.STUDENT_ID
WHERE P.STUDENT_ID IS NULL;

-- 8.FINDING THE COURSES WITH NO ENROLLMENTS
SELECT C.COURSE_NAME FROM COURSES C
LEFT JOIN ENROLLMENTS E
ON C.COURSE_ID=E.COURSE_ID
WHERE E.COURSE_ID IS NULL; 

-- 9.SELF JOIN ON ENROLLMENTS TO FIND THE STUDENTS ENROLLED IN MORE THAN ONE COURSE
SELECT E2.STUDENT_ID, E2.COURSE_ID FROM ENROLLMENTS E1
JOIN ENROLLMENTS E2
ON E1.ENROLLMENT_ID=E2.ENROLLMENT_ID
GROUP BY E2.ENROLLMENT_ID,E2.COURSE_ID
HAVING COUNT(E1.STUDENT_ID)>1;  

-- 10.LEFT JOIN TO FIND UNASSIGNED TEACHER
SELECT T.FIRST_NAME, T.LAST_NAME, T.TEACHER_ID FROM TEACHER T
LEFT JOIN COURSES C 
ON T.TEACHER_ID=C.TEACHER_ID
WHERE C.TEACHER_ID IS NULL;

-- TASK 4TH

