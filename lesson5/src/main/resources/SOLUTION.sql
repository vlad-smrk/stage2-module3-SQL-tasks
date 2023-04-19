SELECT * FROM Payment WHERE amount >= 500;
SELECT * FROM Student WHERE CURRENT_TIMESTAMP >= DATEADD(year, 20, birthday);
SELECT * FROM Student WHERE groupnumber = 10 AND CURRENT_TIMESTAMP < DATEADD(year, 20, birthday);
SELECT * FROM Student WHERE name LIKE 'Mike%' OR groupnumber IN (4, 5, 6);
SELECT * FROM Payment WHERE CURRENT_TIMESTAMP <= DATEADD(month, 14, payment_date);
SELECT * FROM Student WHERE name LIKE 'A%';
SELECT * FROM Student WHERE name LIKE 'Roxi%' AND groupnumber = 4 OR name LIKE 'Tallie%' AND groupnumber = 9;