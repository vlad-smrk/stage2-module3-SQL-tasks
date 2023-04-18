DELETE CASCADE FROM Student WHERE grade >= 4;
DELETE FROM Student WHERE id IN (SELECT student_id FROM Mark WHERE mark < 4);
DELETE CASCADE FROM PaymentType WHERE name = 'DAILY';
DELETE FROM Mark WHERE mark < 7;