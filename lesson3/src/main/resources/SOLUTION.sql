ALTER TABLE Student ALTER COLUMN birthday date NOT NULL;
ALTER TABLE Mark ADD CHECK (mark >= 1 AND mark <= 10);
ALTER TABLE Mark ALTER COLUMN student_id bigint NOT NULL;
ALTER TABLE Mark ALTER COLUMN subject_id bigint NOT NULL;
ALTER TABLE Subject ADD CHECK (grade >= 1 AND grade <= 5);
ALTER TABLE PaymentType ADD UNIQUE (name);
ALTER TABLE Payment ALTER COLUMN type_id bigint NOT NULL;
ALTER TABLE Payment ALTER COLUMN amount decimal NOT NULL;
ALTER TABLE Payment ALTER COLUMN payment_date datetime NOT NULL;