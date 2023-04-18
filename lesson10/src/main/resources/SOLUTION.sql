SElECT subject_id, AVG(mark) AS average_mark INTO #Averages FROM Mark GROUP BY student_id;
SELECT * FROM Subject WHERE id = (SELECT subject_id FROM #Averages WHERE average_mark = (SELECT MAX(average_mark) FROM #Averages));
SELECT student_id, SUM(amount) AS total_paid INTO #Totals FROM Payment GROUP BY student_id;
SELECT * FROM Student WHERE id IN (SELECT student_id FROM #Totals WHERE total_paid < (SELECT AVG(total_paid) FROM #Totals));