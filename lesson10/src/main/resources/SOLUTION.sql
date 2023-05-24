SELECT * FROM Subject INNER JOIN Mark ON Subject.id = subject_id GROUP BY Subject.id HAVING AVG(mark) > (SELECT AVG(mark) FROM Mark);

SELECT * FROM Student INNER JOIN Payment ON Student.id = student_id GROUP BY Student.id HAVING SUM(amount) < (SELECT AVG(total_paid) FROM (SELECT SUM(amount) AS total_paid FROM Payment GROUP BY student_id));