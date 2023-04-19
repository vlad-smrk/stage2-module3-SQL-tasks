CREATE LOCAL TEMPORARY TABLE Averages (subject_id bigint, average_mark int);
INSERT INTO Averages (subject_id, average_mark) SElECT subject_id, AVG(mark) FROM Mark GROUP BY subject_id;
SELECT * FROM Subject WHERE id = (SELECT subject_id FROM Averages WHERE average_mark = (SELECT MAX(average_mark) FROM Averages));
CREATE LOCAL TEMPORARY TABLE Totals (student_id bigint, total_paid decimal);
INSERT INTO Totals (student_id, total_paid) SELECT student_id, SUM(amount) FROM Payment GROUP BY student_id;
SELECT * FROM Student WHERE id IN (SELECT student_id FROM Totals WHERE total_paid < (SELECT AVG(total_paid) FROM Totals));