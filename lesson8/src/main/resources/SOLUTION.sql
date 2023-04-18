SELECT MAX(birthday) AS YoungestBirthday FROM Student;
SELECT MIN(payment_date) AS EarliestPayment FROM Payment;
SELECT AVG(mark) AS AverageMathMark FROM Mark WHERE subject_id IN (SELECT id FROM Subject WHERE name = 'Math');
SELECT MIN(amount) AS MinWeeklyPayment FROM Payment WHERE type_id IN (SELECT id FROM PaymentType WHERE name = 'WEEKLY');