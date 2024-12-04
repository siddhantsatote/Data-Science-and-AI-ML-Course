/* ============================================================
   DDL - Data Definition Language: Used to define and modify database structures (tables, columns, etc.)
   ------------------------------------------------------------
   Common DDL Commands:
   - **CREATE**: Create a new table.
   - **ALTER**: Modify an existing table's structure.
   - **DROP**: Delete a table or column.
   - **TRUNCATE**: Delete all records from a table.
   - **RENAME**: Rename a table or column.
   - **COMMENT**: Add descriptions to tables or columns for reference purposes.

   ============================================================ */

/* ==========================
   1. CREATE TABLE
   --------------------------
   This command creates a new table in the database with specified columns.
   Example: Create a `student` table with `sid`, `sname`, and `dob`.
   ========================== */
CREATE TABLE student (
    sid INT,           -- Student ID (integer)
    sname VARCHAR(20), -- Student name (varchar, max length 20)
    dob DATE           -- Date of birth (date type)
);

SELECT * FROM student;

-- **Explanation**:
-- 1. The `CREATE TABLE` command defines the structure of the table `student`.
-- 2. The `sid`, `sname`, and `dob` columns are specified, with their respective data types.

-- Example Result: An empty `student` table with three columns (`sid`, `sname`, `dob`).


/* ==========================
   2. ALTER TABLE
   --------------------------
   Modify the structure of an existing table (e.g., adding columns, changing data types).
   Example: Add `email` and `ph_no` columns to the `student` table.
   ========================== */
ALTER TABLE student
ADD (email VARCHAR(20), ph_no INT);

DESCRIBE student;

-- **Explanation**:
-- 1. The `ALTER TABLE` command is used to add new columns (`email` and `ph_no`) to the `student` table.
-- 2. The `DESCRIBE` command shows the structure of the `student` table with the new columns.

-- Example Result: `student` table now has `sid`, `sname`, `dob`, `email`, and `ph_no` columns.


/* ==========================
   3. MODIFY COLUMN (Changing Column Data Type)
   --------------------------
   Example: Change the data type of `ph_no` to `VARCHAR(20)` to store phone numbers as text.
   ========================== */
ALTER TABLE student
MODIFY ph_no VARCHAR(20);

-- **Explanation**:
-- 1. The `ALTER TABLE` command is used to change the data type of the `ph_no` column from `INT` to `VARCHAR(20)`.

-- Example Result: The `ph_no` column is now capable of storing phone numbers as text.


/* ==========================
   4. RENAME COLUMN OR TABLE
   --------------------------
   Example: Rename `sid` to `student_id` and rename the table `student` to `student_data1`.
   ========================== */
ALTER TABLE student
RENAME COLUMN sid TO student_id;

ALTER TABLE student
RENAME TO student_data1;

SELECT * FROM student_data1;

-- **Explanation**:
-- 1. The `ALTER TABLE RENAME COLUMN` command renames the column `sid` to `student_id`.
-- 2. The `ALTER TABLE RENAME` command renames the table `student` to `student_data1`.

-- Example Result: The table is now called `student_data1` and the column `sid` is now `student_id`.


/* ==========================
   5. DROP COLUMN OR TABLE
   --------------------------
   Example: Drop the `dob` column from the `student_data1` table.
   ========================== */
ALTER TABLE student_data1
DROP COLUMN dob;

-- **Explanation**:
-- 1. The `ALTER TABLE DROP COLUMN` command removes the `dob` column from the table.

-- Example Result: The `student_data1` table no longer has the `dob` column.


/* ==========================
   6. TRUNCATE TABLE
   --------------------------
   Example: Delete all records from the `emp_copy` table.
   ========================== */
CREATE TABLE emp_copy AS SELECT * FROM employees;

SELECT * FROM emp_copy;

TRUNCATE TABLE emp_copy;

-- **Explanation**:
-- 1. The `CREATE TABLE AS SELECT` command creates a new table `emp_copy` with all the records from the `employees` table.
-- 2. The `TRUNCATE TABLE` command removes all rows from the `emp_copy` table, but the structure remains.

-- Example Result: The `emp_copy` table is empty after the `TRUNCATE` command.


/* ==========================
   7. DROP TABLE
   --------------------------
   Example: Remove the `emp_copy` table from the database.
   ========================== */
DROP TABLE emp_copy;

-- **Explanation**:
-- 1. The `DROP TABLE` command removes the entire table structure and its data permanently.

-- Example Result: The `emp_copy` table is deleted from the database.


/* ==========================
   8. COMMENT ON TABLE OR COLUMN
   --------------------------
   Add comments to tables or columns for documentation purposes.
   Example: Add a comment to the `student_data1` table and its `student_id` column.
   ========================== */
COMMENT ON TABLE student_data1 IS 'Student information table';

COMMENT ON COLUMN student_data1.student_id IS 'Student identification number';

-- **Explanation**:
-- 1. The `COMMENT ON TABLE` command adds a description to the `student_data1` table.
-- 2. The `COMMENT ON COLUMN` command adds a description to the `student_id` column.

-- Example Result: Descriptions are stored in the database for reference but do not affect data retrieval.
