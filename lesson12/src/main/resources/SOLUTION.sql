DELETE FROM Student WHERE id IN (SELECT DISTINCT Student.id FROM Student INNER JOIN Mark ON Student.id = student_id INNER JOIN Subject ON Subject.id = subject_id WHERE grade >= 4);
DELETE FROM Student WHERE id IN (SELECT DISTINCT student_id FROM Mark WHERE mark < 4);
DELETE FROM PaymentType WHERE name = 'DAILY';
DELETE FROM Mark WHERE mark < 7;