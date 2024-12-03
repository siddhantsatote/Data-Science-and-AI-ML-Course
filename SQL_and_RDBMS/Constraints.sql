-/* ===========================================================
   Constraints Overview:
   -----------------------------------------------------------
   Constraints are rules applied to table columns to enforce
   data integrity and consistency.
   =========================================================== */

-- 1. Types of Constraints:
--    NOT NULL: Ensures the column cannot have NULL values.
--    UNIQUE: Ensures all values in the column are unique.
--    PRIMARY KEY: A unique identifier for each record in a table. Combines NOT NULL and UNIQUE. Can only be used once per table.
--    CHECK: Ensures that values meet specific conditions.
--    FOREIGN KEY: Creates a relationship between two tables by referencing a column in a parent table.

-- ===========================================================
-- Table Creation with Constraints
-- ===========================================================

-- Create `course` table
CREATE TABLE course (
    cid INT CONSTRAINT pk_cid PRIMARY KEY,               -- Primary Key: Unique identifier for courses
    cname VARCHAR(20) CONSTRAINT nn_cname NOT NULL       -- NOT NULL: Course name is mandatory
);

-- Create `student` table
CREATE TABLE student (
    sid INT PRIMARY KEY,                                 -- Primary Key: Unique identifier for students
    sname VARCHAR(20) CONSTRAINT nn_sname NOT NULL,      -- NOT NULL: Student name is mandatory
    email VARCHAR(20) CONSTRAINT chk_email CHECK(email LIKE '%.com'),  -- CHECK: Email must contain '.com'
    ph_no INT CONSTRAINT unq_phno UNIQUE,               -- UNIQUE: No duplicate phone numbers allowed
    course_id INT CONSTRAINT fk_cid REFERENCES course(cid)  -- FOREIGN KEY: Links to `cid` in the `course` table
);

-- Insert data into `course` table
INSERT INTO course VALUES (10, 'SQL');
INSERT INTO course VALUES (20, 'Python');

-- View data in `course` table
SELECT * FROM course;

-- Insert valid data into `student` table
INSERT INTO student VALUES (101, 'John', 'john@gmail.com', 253464, 10);

-- Attempt to view all data in `student` table
SELECT * FROM student;

-- ===========================================================
-- ALTERING TABLES: Modifying Structure and Adding Constraints
-- ===========================================================

-- Create `students` table with basic structure
CREATE TABLE students (
    sid INT,
    sname VARCHAR(20),
    email VARCHAR(20),
    ph_no INT,
    course_id INT
);

-- Create `courses` table with basic structure
CREATE TABLE courses (
    cid INT,
    cname VARCHAR(20)
);

-- Add constraints to `students` table
ALTER TABLE students ADD CONSTRAINT pk_sid PRIMARY KEY (sid);                   -- Add Primary Key
ALTER TABLE students MODIFY sname CONSTRAINT nn_name NOT NULL;                  -- Add NOT NULL constraint to `sname`
ALTER TABLE students ADD CONSTRAINT ck_email CHECK (email LIKE '%.com');        -- Add CHECK constraint to `email`
ALTER TABLE students ADD (                                                     -- Add multiple constraints
    CONSTRAINT un_phno UNIQUE (ph_no),                                         -- UNIQUE constraint for `ph_no`
    CONSTRAINT ck_phno CHECK (LENGTH(ph_no) = 10)                              -- CHECK constraint for phone number length
);
ALTER TABLE students ADD CONSTRAINT fk_course FOREIGN KEY (course_id) REFERENCES courses(cid);  -- Add Foreign Key

-- Add constraints to `courses` table
ALTER TABLE courses ADD PRIMARY KEY (cid);                                     -- Add Primary Key
ALTER TABLE courses MODIFY cname CONSTRAINT nn_cname NOT NULL;                 -- Add NOT NULL constraint to `cname`

-- Attempt to insert invalid data into `students` table
-- (Phone number is not 10 digits)
INSERT INTO students VALUES (101, 'John', 'john@gmail.com', 3672366543, 10);

-- ===========================================================
-- DROPPING CONSTRAINTS
-- ===========================================================

-- Drop constraints from `students` table
ALTER TABLE students DROP CONSTRAINT pk_sid;                                   -- Drop Primary Key
ALTER TABLE students DROP CONSTRAINT nn_name;                                  -- Drop NOT NULL constraint

-- Drop constraints from `courses` table
ALTER TABLE courses DROP CONSTRAINT SYS_C007363 CASCADE;                       -- Drop constraint with cascade

