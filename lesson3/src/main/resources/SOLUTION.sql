ALTER TABLE Student MODIFY COLUMN birthday date NOT NULL;
ALTER TABLE Mark ADD CHECK (mark >= 1 AND mark <= 10);
ALTER TABLE Mark MODIFY COLUMN student_id bigint NOT NULL;
ALTER TABLE Mark MODIFY COLUMN subject_id bigint NOT NULL;
ALTER TABLE Subject ADD CHECK (grade >= 1 AND grade <= 5);
ALTER TABLE PaymentType MODIFY COLUMN name varchar(63) UNIQUE;
ALTER TABLE Payment MODIFY COLUMN type_id bigint NOT NULL;
ALTER TABLE Payment MODIFY COLUMN amount decimal NOT NULL;
ALTER TABLE Payment MODIFY COLUMN payment_date datetime NOT NULL;