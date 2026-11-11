
##ALL THE QUERIES

use college;

## LEVEL 1 --
##Show all students in class 12.
SELECT ROLL_NO , NAME FROM STUDENT 
WHERE CLASS = 12 ;


##List students older than 17, sorted by name.
SELECT ROLL_NO,NAME,AGE FROM STUDENT 
WHERE AGE > 17 
ORDER BY NAME;

##Show all marks above 90.
SELECT STUDENT_ROLL_NO , SUBJECT_ID , MARKS_OBTAINED FROM MARKS
WHERE MARKS_OBTAINED >= 90;

##LEVEL 2
##Find the total number of students.
SELECT COUNT(ROLL_NO) FROM STUDENT;

#Find the highest, lowest, and average marks across the whole MARKS table.
SELECT MAX(MARKS_OBTAINED) , MIN(MARKS_OBTAINED) , AVG(MARKS_OBTAINED) FROM MARKS;

##Count how many students are in each class (GROUP BY CLASS).
SELECT COUNT(ROLL_NO) ,CLASS FROM STUDENT 
GROUP BY CLASS;

##Level 3
##Average marks per subject.
SELECT SUBJECT_ID , AVG(MARKS_OBTAINED) FROM marks
GROUP BY SUBJECT_ID;

##Total marks per student.
SELECT STUDENT_ROLL_NO, AVG(MARKS_OBTAINED) FROM MARKS
GROUP BY STUDENT_ROLL_NO;

##Average marks per student, showing only students with an average above 70 (
SELECT STUDENT_ROLL_NO, AVG(MARKS_OBTAINED) FROM MARKS
GROUP BY STUDENT_ROLL_NO
HAVING AVG(MARKS_OBTAINED) > 70;

##Subjects where the average marks are below 65.
SELECT SUBJECT_ID , AVG(MARKS_OBTAINED) FROM MARKS 
GROUP BY SUBJECT_ID
HAVING AVG(MARKS_OBTAINED) < 65;

##Number of students who scored above 80 in each subject.
SELECT  SUBJECT_ID,COUNT(STUDENT_ROLL_NO) FROM MARKS
GROUP BY SUBJECT_ID 
HAVING MARKS_OBTAINED > 80 ;

##Level 4
##Show the student name, subject name, and marks together
SELECT S.NAME , B.NAME , M.MARKS_OBTAINED 
FROM MARKS AS M  
JOIN STUDENT AS S ON M.STUDENT_ROLL_NO = S.ROLL_NO 
JOIN SUBJECT AS B ON M.SUBJECT_ID = B.SUBJECT_ID;

##Show the average marks per subject using the subject name, not the ID.
SELECT S.NAME , AVG(M.MARKS_OBTAINED) 
FROM MARKS AS M
JOIN SUBJECT AS S 
ON S.SUBJECT_ID = M.SUBJECT_ID
GROUP BY S.NAME;

##Show every mark of students in class 11 only.
SELECT M.MARKS_OBTAINED , S.NAME 
FROM MARKS AS M 
JOIN STUDENT AS S ON M.STUDENT_ROLL_NO = S.ROLL_NO
WHERE S.CLASS = 11 ;


##LEVEL 5
##Average marks per course: one row per subject with its average.
SELECT S.NAME , AVG(M.MARKS_OBTAINED) 
FROM MARKS AS M
JOIN SUBJECT AS S 
ON S.SUBJECT_ID = M.SUBJECT_ID
GROUP BY S.NAME;











