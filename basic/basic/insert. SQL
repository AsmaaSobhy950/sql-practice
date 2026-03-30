---------------Create a personal scratch table:-----------------
CREATE TABLE IF NOT EXISTS student_notes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  note VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Insert one row with a custom note
INSERT INTO student_notes (note)
VALUES ('This is my first note');

--Insert two rows in a single statement
INSERT INTO student_notes (note)
VALUES 
    ('This is my second note'),
    ('Another quick note added together');

--Insert a row where note = NULL
INSERT INTO student_notes (note)
VALUES (NULL);
---------------------------------
--Select rows where note IS NULL--
----------------------------------
SELECT *
FROM student_notes
WHERE note IS NULL;
--------------------------------------
-- Select rows where note IS NOT NULL
---------------------------------------
SELECT *
FROM student_notes
WHERE note IS NOT NULL;
-----------------------------------------
--SQL UPDATE  (use the scratch table)--
-----------------------------------------
--Update any one student_notes row to change note text.--
UPDATE student_notes
SET note = 'Updated note text'
WHERE id = 1;

--Update all rows where note IS NULL to 'No note provided--
UPDATE student_notes
SET note = 'No note provided'
WHERE note IS NULL;
-------------------------------------------
--SQL DELETE  (use the scratch table)--
-------------------------------------------
--Delete all rows where note = 'No note provided'--
DELETE FROM student_notes
WHERE note = 'No note provided';

--Delete the latest row (max id) from student_notes--
DELETE FROM student_notes
ORDER BY id DESC
LIMIT 1;

